module TestPar16();

wire z_t; 
reg clk_t= 0;
reg [15:0] x_t= 16'b0000000000000000;
always #1 clk_t= ~clk_t;

Par16 DUT ( .clk(clk_t), .x(x_t), .z(z_t));

always@ (negedge clk_t) begin

if(x_t==16'hFFFF)
$finish;

x_t= x_t+1;

end
endmodule

