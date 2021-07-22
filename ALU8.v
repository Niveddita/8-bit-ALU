`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03.04.2021 14:44:44
// Design Name: 
// Module Name: ALU8
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module ALU8(
    input [7:0] A,
    input [7:0] B,
    input [3:0] select,
    input cin,
    input bin,
    output reg [7:0] out=8'b0,
    output reg flagc=1'b0,
    output reg flagz=1'b0
    );
always@(A or B or select)
begin
case(select)
4'b0000: out=A+B; //addition
4'b0001: out=A-B; //subtraction
4'b0010: out=A*B; //multiplication
4'b0011: out=A/B; //division
4'b0100: out=A+B+cin; //addition with carry
4'b0101: out=A-B-bin; //subtraction with borrow
4'b0110: out=A&B; //bitwise AND
4'b0111: out=A|B; //bitwise OR
4'b1000: out=~(A&B); //bitwise NAND
4'b1001: out=~(A|B); //bitwise NOR
4'b1010: out=~A; //Negation of A
4'b1011: out=~B; //Negation of B
4'b1100: out=A^B; //bitwise XOR
4'b1101: out=A~^B; //bitwise XNOR
4'b1110: out={A[6:0],A[7]}; //rotate left
4'b1111: out={B[0],B[7:1]}; //rotate right
default: out=A+B;
endcase
end
endmodule
