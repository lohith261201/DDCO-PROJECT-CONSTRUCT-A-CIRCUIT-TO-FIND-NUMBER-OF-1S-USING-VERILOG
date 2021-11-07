module projone (input wire [6:0] in, output wire [2:0] out);

wire c0, c1, s0, s1 ,c;

fa fa_1(in[0],in[1],in[2],s0,c0);
fa fa_2(in[3],in[4],in[5],s1,c1);
fa fa_3(s0,s1,in[6],out[0],c);
fa fa_4(c0,c1,c,out[1],out[2]);

endmodule