#include <stdio.h>
#include <hls_stream.h>
#include <ap_int.h>       // For last signal (1-bit) of streaming protocol


#define image_size 3      // Size of Input image
#define kernal_size 3     // Kernal matrix size
#define stride 1          // Step size of kernel movemnent (Assumed equal in both dimension)
#define padding 1         // Additional pixel added to input image (Assumed equal in both dimension)


// Define the data type of matrix inputs and outputs
typedef double Mat_Dtype;


// Define the axis data structure
struct axis_data {
	Mat_Dtype data;
	ap_uint<1> last;
};


void Conv(hls::stream<axis_data> &data_in, hls::stream<axis_data> &data_out);

