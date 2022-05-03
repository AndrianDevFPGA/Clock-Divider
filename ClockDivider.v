/*
    Author : Rakotojaona
    email : Andrianoelisoa.Rakotojaona@gmail.com
    Description: Clock divider
*/

`timescale 1ns / 1ps
module ClockDivider(
                    clk, // clock
                    rst, // reset high
                    clk_o1, 
                    clk_o2, 
                    clk_o3,
                    clk_o4
    );
    input clk;
    input rst;
    output reg clk_o1;
    output reg clk_o2;
    output reg clk_o3;
    output reg clk_o4;
    
    reg [3:0] clk_counter ; // counter increament posedge clk
        
    always@ (posedge clk)
    begin
    clk_counter <= clk_counter +1;
        if (rst)
        begin
            clk_o1 <=0;
            clk_o2 <=0;
            clk_o3 <=0;
            clk_o4 <=0;
            clk_counter <=0;
        end
        else
        begin
            clk_o1 <= clk_counter[0];
            clk_o2 <= clk_counter[1];
            clk_o3 <= clk_counter[2];
            clk_o4 <= clk_counter[3];    
        end 
    end
endmodule
