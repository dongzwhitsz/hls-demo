#pragma once

#include "./weights/w_dense_bias.h"
#include "./weights/w_dense_kernel.h"
#include "./weights/w_logit_bias.h"
#include "./weights/w_logit_kernel.h"
#include "./weights/w_lstm_bias.h"
#include "./weights/w_lstm_kernel.h"
#include "./weights/w_lstm_recurrent_kernel.h"

typedef float data_t;
#define IMG_SIZE  28

/*lstm网络参数*/
template<int input_dim, int hidden_size>
class W_t 
{
public:
    data_t forget_kernel[input_dim][hidden_size];
    data_t forget_bias[hidden_size];
    data_t forget_recurrent_kernel[hidden_size][hidden_size];

    data_t input_kernel[input_dim][hidden_size];
    data_t input_bias[hidden_size];
    data_t input_recurrent_kernel[hidden_size][hidden_size];

    data_t candidate_kernel[input_dim][hidden_size];
    data_t candidate_bias[hidden_size];
    data_t candidate_recurrent_kernel[hidden_size][hidden_size];

    data_t output_kernel[input_dim][hidden_size];
    data_t output_bias[hidden_size];
    data_t output_recurrent_kernel[hidden_size][hidden_size];

    data_t dense_kernel[128][128];
    data_t dense_bias[128];

    data_t logit_kernel[128][10];
    data_t logit_bias[10];
};
