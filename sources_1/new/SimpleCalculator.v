`timescale 1ns / 1ps
 
module SimpleCalculator(
    input [3:0] i_a,i_b,
    input [1:0] i_selOperator,
    output [3:0] o_results
    );

    reg[3:0] r_result;
    assign o_results = r_result;

    always @(*) begin
        case (i_selOperator)
            2'b00 : r_result = i_a + i_b;
            2'b01 : r_result = i_a - i_b;
            2'b10 : r_result = i_a * i_b;
            2'b11 : begin
                if (i_b == 0) r_result = 0; // 0으로 나누면 무한대이기 때문에
                else r_result = i_a / i_b;
            end
    
        endcase
    end
endmodule
