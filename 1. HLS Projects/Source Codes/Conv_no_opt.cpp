#include "header.h"

void Conv(hls::stream<axis_data> &data_in, hls::stream<axis_data> &data_out) {

	#pragma HLS INTERFACE ap_ctrl_none port=return
	#pragma HLS INTERFACE axis register both port=data_in
	#pragma HLS INTERFACE axis register both port=data_out


	// Instantiate matrices to store inputs and outputs
	Mat_Dtype input_mat[image_size][image_size];
	Mat_Dtype kernal_mat[kernal_size][kernal_size];



    // Calculate output dimension and declaring matrix
	int output_size = (image_size - kernal_size + 2 * padding) / stride + 1;
	Mat_Dtype output_image[output_size][output_size];


	int i,j,m,n,index;
	axis_data local_stream;


     // Read data for Input Image Matrix
     L1_Image_Matrix: for(i=0; i < image_size; i++){
    	 L2_Image_Matrix: for(j=0; j < image_size; j++){
    		 local_stream = data_in.read();
			 input_mat[i][j] = local_stream.data;}}


 	// Read data for Kernal Matrix
     L1_Kernal_Matrix: for(i=0; i < kernal_size; i++){
    	 L2_Kernal_Matrix: for(j=0; j < kernal_size; j++){
 			local_stream = data_in.read();
 			kernal_mat[i][j] = local_stream.data;}}


    // Apply padding to the input image
     Mat_Dtype padded_image[image_size + 2*padding][image_size + 2*padding] = {0};
    for (i = 0; i < image_size; ++i) {
        for (j = 0; j < image_size; ++j) {
            padded_image[i + padding][j + padding] = input_mat[i][j];}}


    // Convolution operation
    C1:  for (i = 0; i < output_size; ++i) {
        C2:  for (j = 0; j < output_size; ++j) {
            output_image[i][j] = 0;
            C3:  for (m = 0; m < kernal_size; ++m) {
                C4:  for (n = 0; n < kernal_size; ++n) {
                    output_image[i][j] += padded_image[i * stride + m][j * stride + n] * kernal_mat[m][n]; } } } }


    output_loop_1: for(i=0; i < output_size; i++){         // Output stream the result
		output_loop_2: for(j=0; j < output_size; j++){
			local_stream.data = output_image[i][j];

				// Last signal and the strobe signal
				if((i==output_size-1) && (j==output_size-1))
					local_stream.last = 1;
				else
					local_stream.last = 0;
				data_out.write(local_stream);}}

}

