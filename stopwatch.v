`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    15:41:39 03/28/2017 
// Design Name: 
// Module Name:    stpwatch 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
module stopwatch(
    output reg [3:0]count,
	 input clk,
	 input reset,
	 input pause,
	 input start
    );

reg [25:0] cycle;

reg flag;
initial begin
 cycle = 0;
 flag = 0;
end

always @(posedge clk) begin
		if (start) begin
			flag = 1;
			cycle = 0;
		end	
		
		if (pause)
			flag = 0;
			
		if(flag==1) begin	
			cycle = cycle + 1'b1;
			if(cycle == 50000000) begin
				
				count = count +1;
				cycle = 0;
				if(count == 4'b1111)
					count = 4'b0000;
		end
		end

		if(reset) begin
			count = 4'b0000;
			cycle = 0;
	   end		
end

endmodule

