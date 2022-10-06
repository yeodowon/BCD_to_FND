`timescale 1ns / 1ps


module Mode_Subtractor(
   input [3:0] i_a, i_b, //i_a[3], i_a[2], i_a[1], i_a[0]
   input i_mode, //mode
   output [3:0] o_sum,
   output o_carry
   );

    wire [3:0] w_b;
    assign w_b  = {4{i_mode}} ^ i_b; 
    // assign w_b = 4'b1111 ^ i_b; 
    // assign w_b = 4'b0000 ^ i_b; 

   FA_4 Adder_Sub(
   .i_a(i_a),
   .i_b(w_b),
   .i_c(i_mode),
   .o_sum(o_sum),
   .o_carry(o_carry)
   );

  
    
endmodule
