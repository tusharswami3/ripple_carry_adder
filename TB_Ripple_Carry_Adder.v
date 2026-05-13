`timescale 1ns / 1ps

module rca_tb;

    reg  [3:0] a, b;
    reg cin;
    wire [3:0] sum;
    wire cout;

    
    rca_4bit dut (
        .a(a), .b(b),
        .cin(cin),
        .sum(sum),
        .cout(cout)
    );

    initial
     begin
       
        
        // Test Case 1
        a = 4'b0001; b = 4'b0010; cin = 0;
        #10;
        
        // Test Case 2
        a = 4'b0001; b = 4'b0011; cin = 1;
        #10;
        
        // Test Case 3
        a = 4'b0111; b = 4'b0011; cin = 0;
        #10;

        // Test Case 4
        a = 4'b1110; b = 4'b0111; cin = 1;
        #10;

        
    end

endmodule
