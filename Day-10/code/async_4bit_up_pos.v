module async_4bit_up_pos(clk,rst,count);
input clk,rst;
output [3:0]count;

wire Qb0,Qb1,Qb2,Qb3;

T_FF tff0(clk,rst,1'b1,count[0],Qb0);
T_FF tff1(Qb0,rst,1'b1,count[1],Qb1);
T_FF tff2(Qb1,rst,1'b1,count[2],Qb2);
T_FF tff3(Qb2,rst,1'b1,count[3],Qb3);

endmodule

module async_4bit_up_pos_tb();
reg clk,rst;
wire [3:0]count;

async_4bit_up_pos dut(clk,rst,count);

always #5 clk=~clk;

initial begin
clk=1'b0;
rst=1'b0;
#12 rst=1'b1;
#12 rst=1'b0;
#500 $finish;
end
endmodule
