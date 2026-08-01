`timescale 1ns / 1ps

module full_subtractor_tb;

    // Inputs
    reg a;
    reg b;
    reg bin;

    // Outputs
    wire diff;
    wire bout;

    // Instantiate the Unit Under Test (UUT)
    full_subtractor uut (
        .a(a),
        .b(b),
        .bin(bin),
        .diff(diff),
        .bout(bout)
    );

    initial begin
        $display("A B Bin | Diff Bout");
        $display("-------------------");

        a = 0; b = 0; bin = 0; #10;
        $display("%b %b  %b  |   %b    %b", a, b, bin, diff, bout);

        a = 0; b = 0; bin = 1; #10;
        $display("%b %b  %b  |   %b    %b", a, b, bin, diff, bout);

        a = 0; b = 1; bin = 0; #10;
        $display("%b %b  %b  |   %b    %b", a, b, bin, diff, bout);

        a = 0; b = 1; bin = 1; #10;
        $display("%b %b  %b  |   %b    %b", a, b, bin, diff, bout);

        a = 1; b = 0; bin = 0; #10;
        $display("%b %b  %b  |   %b    %b", a, b, bin, diff, bout);

        a = 1; b = 0; bin = 1; #10;
        $display("%b %b  %b  |   %b    %b", a, b, bin, diff, bout);

        a = 1; b = 1; bin = 0; #10;
        $display("%b %b  %b  |   %b    %b", a, b, bin, diff, bout);

        a = 1; b = 1; bin = 1; #10;
        $display("%b %b  %b  |   %b    %b", a, b, bin, diff, bout);

        $finish;
    end

endmodule