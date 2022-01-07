module TestPar();

wire z_t; 
reg clk_t= 0;
reg [3:0] x_t= 4'b0000;
always #5 clk_t= ~clk_t;

Par DUT ( .clk(clk_t), .x(x_t), .z(z_t));

always@ (negedge clk_t)

x_t= x_t+1;

endmodule

