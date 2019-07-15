#ifndef _matrix_h
#define _matrix_h

typedef float data_t;
typedef struct
{
    data_t *p;
    int w;
    int h;
}matrix;


void matmul(matrix a, matrix b, matrix out);



#endif