`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 30.06.2026 13:49:07
// Design Name: 
// Module Name: mode3
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


module mode3(clk,rst,a,b,m,q,qb);
input clk,rst;
input a,b;
input [1:0]m;
output reg q,qb;
wire qd,qdb,qt,qtb,qjk,qjkb;
wire t_in,jk_in;
d_ff dff1(clk,rst,a,qd,qdb);
assign t_in=a^qt;
d_ff tff1(clk,rst,t_in,qt,qtb);
assign jk_in=(a&qjkb)|(~b&qjk);
d_ff jkff1(clk,rst,jk_in,qjk,qjkb);
always@(*)begin
case(m)
2'b00:begin
q=qd;
qb=qdb;
end
2'b01:begin
q=qt;
qb=qtb;
end
2'b10:begin
q=qjk;
qb=qjkb;
end
endcase
end
endmodule
