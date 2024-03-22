`timescale 1ns / 1ps
module Ejercicio2(input [2:0]ctrl,[2:0]A,B, output [5:0]Leds);
//combo_design U1 (.A(A),.B(B),.Out(Out),.C(C));
wire [5:0]Y3_MULT;
wire [3:0]Y1_ADD;
wire [2:0] Y2_MIN,Y4_DIV, Y5_MOD; 
reg [5:0] aux;
arithmetic_operators U2 (.A(A),.B(B), .Y1_ADD(Y1_ADD), 
.Y2_MIN(Y2_MIN), .Y3_MULT(Y3_MULT), .Y4_DIV(Y4_DIV), .Y5_MOD(Y5_MOD));
//assign Leds = ctrl?{3'b000,Y1_ADD}:{4'b0000,Y2_MIN};
assign Leds= aux;
always@(*)
begin
    case(ctrl)
        0:aux= Y1_ADD;
        1:aux= Y2_MIN;
        2:aux= Y3_MULT;
        3:aux= Y4_DIV;
        4:aux= Y5_MOD;
        default:aux=0;
    endcase
end
endmodule
