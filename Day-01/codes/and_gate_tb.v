`timescale 1ns / 1ps

module and_gate_tb;

    // Inputs
    reg A;
    reg B;

    // Output
    wire Y;

    // Instantiate the AND gate
    and_gate uut (
        .A(A),
        .B(B),
        .Y(Y)
    );

    initial begin
        $display("A B | Y");
        $monitor("%b %b | %b", A, B, Y);

        // Apply test vectors
        A = 0; B = 0; #10;
        A = 0; B = 1; #10;
        A = 1; B = 0; #10;
        A = 1; B = 1; #10;

        $finish;
    end

endmodule