`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05/14/2023 09:41:32 PM
// Design Name: 
// Module Name: tb_KSA
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


module tb_KSA;

	// Inputs
	reg [7:0] a;
	reg [7:0] b;

	// Outputs
	wire [7:0] sum;
	wire carryout;

	// Instantiate the Unit Under Test (UUT)
	KSA uut (
		.a(a), 
		.b(b), 
		.sum(sum), 
		.carryout(carryout)
	);

	initial begin
		// Initialize Inputs
		a = 8'b00000000;
		b = 8'b00000000;
		#10;
		
		a = 8'b00001000;
		b = 8'b00000001;
		#10;
		
		a = 8'b00001100;
		b = 8'b00000010;
		#10;
		
		a = 8'b00001110;
		b = 8'b00000011;
		#10;
		
		a = 8'b00000100;
		b = 8'b00000011;
		#10;
		
		a = 8'b00001000;
		b = 8'b00000100;
		#10;
        
	

	end
      
endmodule


