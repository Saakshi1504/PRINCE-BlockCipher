`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05/01/2025 01:20:16 PM
// Design Name: 
// Module Name: top_module_t
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


module top_module_t;
reg [63:0] plaintext;
reg [63:0] k0;
reg [63:0] k1;
wire [63:0] ciphertext;
top_module tb1(plaintext,k0,k1,ciphertext);
initial
begin
    #10 plaintext = 64'h0000000000000000;
    k0 = 64'h0000000000000000;
    k1 = 64'h0000000000000000;
    #50;
    $display("After Round 0: r0 = %h", tb1.r0);
    #50;
    $display("After Round 1: r1 = %h", tb1.r1);
    $display("After Round 2: r2 = %h", tb1.r2);
    $display("After Round 3: r3 = %h", tb1.r3);
    $display("After Round 4: r4 = %h", tb1.r4);
    $display("After Round 5: r5 = %h", tb1.r5);
    $display("After Middle Round: mr = %h", tb1.mr);
    $display("After Inverse Round 6: r6 = %h", tb1.r6);
    $display("After Inverse Round 7: r7 = %h", tb1.r7);
    $display("After Inverse Round 8: r8 = %h", tb1.r8);
    $display("After Inverse Round 9: r9 = %h", tb1.r9);
    $display("After Inverse Round 10: r10 = %h", tb1.r10);
    $display("After Inverse Round 11: r11 = %h", tb1.r11);
    #50;
    $display("Ciphertext = %h", ciphertext);
    #500 $finish;
end
endmodule