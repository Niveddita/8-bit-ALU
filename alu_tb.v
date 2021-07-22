`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03.04.2021 15:16:56
// Design Name: 
// Module Name: alu_tb
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


module alu_tb(
    );
    reg [7:0] A1,B1;
    reg [3:0] select1;
    reg cin1=1,bin1=1;
    wire [7:0] out1;
    integer i;
    ALU8 uut(.A(A1),.B(B1),.select(select1),.out(out1),.cin(cin1),.bin(bin1));
    initial
    begin
    A1= 8'b00001001;
    B1= 8'b00000011;
    select1=4'b0000;
    for(i=0;i<=15;i=i+1)
    begin
    select1=select1+4'b0001;#20;
    $finish;
    end
    end
    endmodule
