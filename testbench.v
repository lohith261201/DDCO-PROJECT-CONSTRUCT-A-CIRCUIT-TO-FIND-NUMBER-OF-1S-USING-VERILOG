`timescale 1 ns / 100 ps
`define TESTVECS 6
module tb;
reg clk, reset;
reg [6:0] i0;
wire [2:0] o;

reg [6:0] test_vecs [0:(`TESTVECS-1)];

integer i;

initial begin $dumpfile("tb_projone.vcd");

$dumpvars(0,tb);

end

initial begin reset = 1'b1; #12.5 reset =

1'b0; end

initial clk = 1'b0; always #5 clk =~ clk;

initial begin

test_vecs[0][6:0] = 7'b0000000;
test_vecs[1][6:0] = 7'b0000011;
test_vecs[2][6:0] = 7'b0000010;
test_vecs[3][6:0] = 7'b1010100;
test_vecs[4][6:0] = 7'b1111010;
test_vecs[5][6:0] = 7'b0000010;

end

projone proj (i0, o);
initial begin

#6 for(i=0;i<`TESTVECS;i=i+1)
begin #10 {i0}=test_vecs[i]; end

#100 $finish;
end
endmodule