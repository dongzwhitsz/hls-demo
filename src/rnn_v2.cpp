#include "./forward.h"
#include <iostream>
#include <math.h>

/*
矩阵与向量的乘法运算
num_row: 矩阵的行数
num_col: 矩阵的列数
 */
template<int num_row, int num_col>
void vector_x_matrix(data_t m[num_row][num_col], data_t v[num_row], data_t out[num_col])
{
    for(int i = 0; i < num_col; ++i)
    {
        for(int j = 0; j < num_row; ++j)
        {
            out[i] = out[i] + v[j] * m[j][i];
        }
    }
}

template<int num_row, int num_col>
void vector_xm_plus_b(data_t m[num_row][num_col], data_t v[num_row], data_t b[num_col], data_t out[num_col])
{
    vector_x_matrix<num_row, num_col>(m, v, out);
    for(int i = 0; i < num_col; ++i)
    {
        out[i] += b[i];
    }
}

template<int num_vec>
void vector_add(data_t V1[num_vec], data_t V2[num_vec], data_t out[num_vec])
{
    for(int i = 0; i < num_vec; ++i)
    {
        out[i] = V1[i] + V2[i];
    }
}

template<int num_vec>
void vector_element_mul(data_t V1[num_vec], data_t V2[num_vec], data_t out[num_vec])
{
    for(int i = 0; i < num_vec; ++i)
    {
        out[i] = V1[i] * V2[i];
    }
}

template<int num_vec>
void vector_hard_sigmoid(data_t v[num_vec])
{
    for(int i = 0; i < num_vec; ++i)
    {
        // v[i] = v[i] >= -2.5 ? (v[i] <= 2.5 ? (0.2 * v[i] + 0.5) : 1) : 0;
        if(v[i] < -2.5)
        {
            v[i] = 0;
        }else if(v[i] > 2.5)
        {
            v[i] = 1;
        }else
        {
            v[i] = 0.2 * v[i] + 0.5;
        }
    }
}

template<int num_vec>
void vector_hard_tanh(data_t v[num_vec])
{
    for(int i = 0; i < num_vec; ++i)
    {
        v[i] = v[i] >= -1 ? (v[i] <= 1? v[i] : 1) : -1;
    }
}

template<int num_vec>
void vector_relu(data_t v[num_vec])
{
    for(int i = 0; i < num_vec; ++i)
    {
        v[i] = v[i] > 0 ? v[i] : 0;
    }
}

template<int num_vec>
void vector_softmax(data_t v[num_vec])
{
    data_t s = 0;
    for(int i = 0; i < num_vec; ++i)
    {
        v[i] = exp(v[i]);
        s += v[i];
    }
    for(int i = 0; i < num_vec; ++i)
    {
        v[i] = v[i] / s;
    }
}

template<int num_vec>
void vector_copy(data_t from[num_vec], data_t to[num_vec])
{
    for(int i = 0; i < num_vec; ++i)
    {
        to[i] = from[i];
    }
}

template<int input_dim, int hidden_size>
void lstm_forward_once(data_t x[input_dim], data_t h[hidden_size], data_t c[hidden_size], /*data_t c_next, data_t h_next[hidden_size],*/ W_t<input_dim, hidden_size> *weight)
{
    data_t forget_result[hidden_size] = {0};
    data_t candidate_result[hidden_size] = {0};
    data_t input_result[hidden_size] = {0};
    data_t output_result[hidden_size] = {0};

    /* forget gate */
    data_t forget_kernel_result[hidden_size] = {0};
    vector_x_matrix<input_dim, hidden_size>(weight->forget_kernel, x, forget_kernel_result);
    data_t forget_recurrent_result[hidden_size] = {0};
    vector_xm_plus_b<hidden_size, hidden_size>(weight->forget_recurrent_kernel, h, weight->forget_bias, forget_recurrent_result);
    vector_add<hidden_size>(forget_kernel_result, forget_recurrent_result, forget_result);
    vector_hard_sigmoid<hidden_size>(forget_result);

    /* candidate gate */
    data_t candidate_kernel_result[hidden_size] = {0};
    vector_x_matrix<input_dim, hidden_size>(weight->candidate_kernel, x, candidate_kernel_result);
    data_t candidate_recurrent_result[hidden_size] = {0};
    vector_xm_plus_b<hidden_size, hidden_size>(weight->candidate_recurrent_kernel, h, weight->candidate_bias, candidate_recurrent_result);
    vector_add<hidden_size>(candidate_kernel_result, candidate_recurrent_result, candidate_result);
    vector_hard_tanh<hidden_size>(candidate_result);

    /* input gate */
    data_t input_kernel_result[hidden_size] = {0};
    vector_x_matrix<input_dim, hidden_size>(weight->input_kernel, x, input_kernel_result);
    data_t input_recurrent_result[hidden_size] = {0};
    vector_xm_plus_b<hidden_size, hidden_size>(weight->input_recurrent_kernel, h, weight->input_bias, input_recurrent_result);
    vector_add<hidden_size>(input_kernel_result, input_recurrent_result, input_result);
    vector_hard_sigmoid<hidden_size>(input_result);

    /* output gate */
    data_t output_kernel_result[hidden_size] = {0};
    vector_x_matrix<input_dim, hidden_size>(weight->output_kernel, x, output_kernel_result);
    data_t output_recurrent_result[hidden_size] = {0};
    vector_xm_plus_b<hidden_size, hidden_size>(weight->output_recurrent_kernel, h, weight->output_bias, output_recurrent_result);
    vector_add<hidden_size>(output_kernel_result, output_recurrent_result, output_result);
    vector_hard_sigmoid<hidden_size>(output_result);

    // input gate 和 candidate gate做点乘
    data_t input_x_candidate[hidden_size] = {0};
    vector_element_mul<hidden_size>(input_result, candidate_result, input_x_candidate);

    vector_element_mul<hidden_size>(c, forget_result, c);
    // 更新c状态
    vector_add<hidden_size>(c, input_x_candidate, c);

    data_t c_tmp[hidden_size] = {0};
    vector_copy<hidden_size>(c, c_tmp);
    vector_hard_tanh<hidden_size>(c_tmp);
    // 更新h状态
    vector_element_mul<hidden_size>(output_result, c_tmp, h);
}

template<int time_steps, int input_dim, int hidden_size>
void lstm_forward(data_t x[time_steps][input_dim],  /*data_t c_next, data_t h_next[hidden_size],*/ W_t<input_dim, hidden_size> *weight, data_t h[hidden_size])
{
    data_t c[hidden_size] = {0};
    for(int i = 0; i < time_steps; ++i)
    {
        lstm_forward_once<input_dim, hidden_size>(x[i], h, c, weight);
    }
}

template<int time_steps, int input_dim, int hidden_size>
void network_forward(data_t img[IMG_SIZE][IMG_SIZE], W_t<input_dim, hidden_size> *weight, data_t logit[10])
{
    // lstm层的连接
    data_t h[hidden_size] = {0};
    lstm_forward<time_steps, input_dim, hidden_size>(img, weight, h);
    // dense 层的连接
    data_t dense_result[128] = {0};
    vector_xm_plus_b<hidden_size, 128>(weight->dense_kernel, h, weight->dense_bias, dense_result);
    vector_relu<128>(dense_result);
    // softmax层的连接
    vector_xm_plus_b<128, 10>(weight->logit_kernel, dense_result, weight->logit_bias, logit);
    vector_softmax<10>(logit);
}

W_t<28, 128> weight;

#define FOR_LOOP(from, to, iter)                            \
 for(int i = 0; i < 28; ++i)                                \
    {                                                       \
        for(int j = 0; j < 128; ++j)                        \
        {                                                   \
            to[i][j] = from[i][j + 128 * iter];             \
        }                                                   \
    }

#define FOR_BIAS(from, to, iter)                            \
for(int i = 0; i < 128; ++i)                                \
    {                                                       \
        to[i]= from[i + 128 * iter];                        \
    }

void load_weight()
{
    // i f c o
    data_t lstm_kernel[28][512] = LSTM_KERNEL;
    data_t lstm_recurrent_kernel[128][512] = LSTM_RECURRENT_KERNEL;
    data_t lstm_bias[512] = LSTM_BIAS;
    data_t dense_kernel[128][128] = DENSE_KERNEL;
    data_t dense_bias[128] = DENSE_BIAS;
    data_t logit_kernel[128][10] = LOGIT_KERNEL;
    data_t logit_bias[10] = LOGIT_BIAS;

    FOR_LOOP(lstm_kernel, weight.input_kernel, 0);
    FOR_LOOP(lstm_kernel, weight.forget_kernel, 1);
    FOR_LOOP(lstm_kernel, weight.candidate_kernel, 2);
    FOR_LOOP(lstm_kernel, weight.output_kernel, 3);

    FOR_LOOP(lstm_recurrent_kernel, weight.input_recurrent_kernel, 0);
    FOR_LOOP(lstm_recurrent_kernel, weight.forget_recurrent_kernel, 1);
    FOR_LOOP(lstm_recurrent_kernel, weight.candidate_recurrent_kernel, 2);
    FOR_LOOP(lstm_recurrent_kernel, weight.output_recurrent_kernel, 3);

    for(int i = 0; i < 128; ++i)
    {
        for(int j = 0; j < 128; ++j)
        {
            weight.input_recurrent_kernel[i][j] = lstm_recurrent_kernel[i][j];
            weight.forget_recurrent_kernel[i][j] = lstm_recurrent_kernel[i][j + 128];
            weight.candidate_recurrent_kernel[i][j] = lstm_recurrent_kernel[i][j +128*2];
            weight.output_recurrent_kernel[i][j] = lstm_recurrent_kernel[i][j + 128*3];
        }
    }

    FOR_BIAS(lstm_bias, weight.input_bias, 0);
    FOR_BIAS(lstm_bias, weight.forget_bias, 1);
    FOR_BIAS(lstm_bias, weight.candidate_bias, 2);
    FOR_BIAS(lstm_bias, weight.output_bias, 3);

    for(int i = 0; i < 128; i++)
    {
        for(int j = 0; j < 128; ++j)
        {
            weight.dense_kernel[i][j] = dense_kernel[i][j];
        }
    }

    for(int i = 0; i < 128; ++i)
    {
        weight.dense_bias[i] = dense_bias[i];
    }

    for(int i = 0; i < 128; i++)
    {
        for(int j = 0; j < 10; ++j)
        {
            weight.logit_kernel[i][j] = logit_kernel[i][j];
        }
    }

    for(int i = 0; i < 10; ++i)
    {
        weight.logit_bias[i] = logit_bias[i];
    }
}


#include "./images/0_5.h"
#include "./images/1_0.h"
#include "./images/2_4.h"
#include "./images/3_1.h"
#include "./images/4_9.h"
#include "./images/5_2.h"
#include "./images/6_1.h"
#include "./images/7_3.h"
#include "./images/8_1.h"
#include "./images/9_4.h"

int main()
{
   load_weight();
//    data_t img[IMG_SIZE][IMG_SIZE] = IMG_0_5;
//    data_t img[IMG_SIZE][IMG_SIZE] = IMG_9_4;
//    data_t img[IMG_SIZE][IMG_SIZE] = IMG_2_4;
   data_t img[IMG_SIZE][IMG_SIZE] = IMG_3_1;
   data_t logit[10] = {0};
   for(int i = 0; i < 28; ++i)
   {
       for(int j = 0; j < 28; ++j)
       {
           img[i][j] = img[i][j] / 128.0 -1;
       }
   }

   network_forward<28, 28, 128>(img, &weight, logit);
   for(int i = 0; i < 10; ++i)
   {
       std::cout << logit[i] << " " ;
   }
   std::cout << std::endl;
}
