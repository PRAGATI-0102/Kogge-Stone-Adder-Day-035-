`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05/14/2023 09:37:45 PM
// Design Name: 
// Module Name: KSA
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


module KSA(a, b, sum, carryout);

input [7:0]a;

input [7:0]b;

wire cin;

output [7:0]sum;

output carryout;

wire [7:0] p,g,cp,cg,ccg,ccp,cccp,cccg,c;

assign p=a^b;

assign g=a&b;

assign cg[0]=(g[0]);

assign cp[0]=(p[0]);

assign cg[1]=(p[1]&g[0])|g[1];

assign cp[1]=(p[1]&p[0]);

assign cg[2]=(p[2]&g[1])|g[2];

assign cp[2]=p[2]&p[1];

assign cg[3]=(p[3]&g[2])|g[3];
assign cp[3]=p[3]&p[2];

assign cg[4]=(p[4]&g[3])|g[4];
assign cp[4]=p[4]&p[3];

assign cg[5]=(p[5]&g[4])|g[5];
assign cp[5]=p[5]&p[4];

assign cg[6]=(p[6]&g[5])|g[6];
assign cp[6]=p[6]&p[5];

assign cg[7]=(p[7]&g[6])|g[7];
assign cp[7]=p[7]&p[6];


assign ccg[0]=cg[0];
assign ccp[0]=cp[0];

assign ccg[1]=cg[1];
assign ccp[1]=cp[1];

assign ccg[2]=(cp[2]&cg[0])|cg[2];
assign ccp[2]=cp[2]&cp[0];

assign ccg[3]=(cp[3]&cg[1])|cg[3];
assign ccp[3]=cp[3]&cp[1];

assign ccg[4]=(cp[4]&cg[2])|cg[4];
assign ccp[4]=cp[4]&cp[2];

assign ccg[5]=(cp[5]&cg[3])|cg[5];
assign ccp[5]=cp[5]&cp[3];

assign ccg[6]=(cp[6]&cg[4])|cg[6];
assign ccp[6]=cp[6]&cp[4];

assign ccg[7]=(cp[7]&cg[5])|cg[7];
assign ccp[7]=cp[7]&cp[5];

assign cccg[0]=ccg[0];
assign cccp[0]=ccp[0];

assign cccg[1]=ccg[1];
assign cccp[1]=ccp[1];

assign cccg[2]=ccg[2];
assign cccp[2]=ccp[2];

assign cccg[3]=ccg[3];
assign cccp[3]=ccp[3];

assign cccg[4]=(ccp[4]&ccg[0])|ccg[4];
assign cccp[4]=ccp[4]&ccp[0];

assign cccg[5]=(ccp[5]&ccg[1])|ccg[5];
assign cccp[5]=ccp[5]&ccp[1];

assign cccg[6]=(ccp[6]&ccg[2])|ccg[6];
assign cccp[6]=ccp[6]&ccp[2];

assign cccg[7]=(ccp[7]&ccg[3])|ccg[7];
assign cccp[7]=ccp[7]&ccp[3];

assign c=cccg;

assign cin = 0;

assign sum[0]=p[0]^cin;

assign sum[1]=p[1]^c[0];

assign sum[2]=p[2]^c[1];

assign sum[3]=p[3]^c[2];

assign sum[4]=p[4]^c[3];

assign sum[5]=p[5]^c[4];

assign sum[6]=p[6]^c[5];

assign sum[7]=p[7]^c[6];

assign carryout=c[7];

endmodule
