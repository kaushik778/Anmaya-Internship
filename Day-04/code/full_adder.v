`timescale 1ns / 1ps

module full_adder(
    input A, input B, input cin,
    output sum, output carry
);
    wire sum1, carry1, carry2;
    
    half_adder ha1(A, B, sum1, carry1);
    half_adder ha2(sum1, cin, sum, carry2);
    or(carry, carry1, carry2);
    
endmodule