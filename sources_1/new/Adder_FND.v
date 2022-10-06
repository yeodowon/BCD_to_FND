`timescale 1ns / 1ps


module Adder_FND(
    input [1:0] i_digitSelect,
    input i_en,

    input [3:0] i_a, i_b, //i_a[3], i_a[2], i_a[1], i_a[0]
    input i_mode, //mode

    output [3:0] o_digit,
    output [7:0] o_fndFont,

    output [3:0] o_sum,
    output o_carry
    );

    
    BCDtoFND Decoder(
    .i_digitSelect(i_digitSelect),
    .i_value(o_sum),
    .i_en(i_en),

    .o_digit(o_digit),
    .o_fndFont(o_fndFont)
    );
    
   Mode_Subtractor Adder(
   .i_a(i_a), 
   .i_b(i_b), //i_a[3], i_a[2], i_a[1], i_a[0]
   .i_mode(i_mode), //mode
   .o_sum(o_sum),
   .o_carry(o_carry)
   );
endmodule



