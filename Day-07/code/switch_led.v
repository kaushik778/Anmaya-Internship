`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 30.06.2026 16:32:44
// Design Name: 
// Module Name: kau
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


module switch_led(
input[15:0] kau ,
output reg [3:0] led
    );
 always@(*)
 begin
 case(kau)
 16'd1:led=4'b0000;
 16'd2:led=4'b0001;
 16'd4:led=4'b0010;
 16'd8:led=4'b0011;
 16'd16:led=4'b0100;
 16'd32:led=4'b0101;
 16'd64:led=4'b0110;
 16'd128:led=4'b0111;
 16'd256:led=4'b1000;
 16'd512:led=4'b1001;
 16'd1024:led=4'b1010;
 16'd2048:led=4'b1011;
 16'd4096:led=4'b1100;
 16'd8196:led=4'b1101;
 16'd16384:led=4'b1110;
 16'd32768:led=4'b1111;
 
 default:led=4'b0000;
 endcase
 end
endmodule
