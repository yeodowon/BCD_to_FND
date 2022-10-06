`timescale 1ns / 1ps


module Calculator(
    input [3:0] i_a, i_b,
    input [1:0] i_selOperator,
    input [1:0] i_digitSelect,
    input i_en,
    output[3:0] o_digit,
    output[7:0] o_fndFont

    );
    wire [3:0] w_result;  // 선 4개를 이어준다.

    SimpleCalculator U0(
        .i_a(i_a),
        .i_b(i_b),
        .i_selOperator(i_selOperator),
        .o_results(w_result)
    );

    BCDtoFND U1(
        .i_digitSelect(i_digitSelect),
        .i_value(w_result),
        .i_en(i_en),

        .o_digit(o_digit),
        .o_fndFont(o_fndFont)
    );

endmodule
