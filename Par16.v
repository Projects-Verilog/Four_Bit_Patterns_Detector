module Par16 (input clk, [15:0] x, output reg z);

parameter match =1, nomatch=0;

reg state=0, next_state;

always @ (posedge clk) begin

state <= next_state;

end

always@ (state) begin

if(state == match)

z <= 1;

else if( state == nomatch)

z <= 0;

end

always@ (state, x) begin

case(state)

nomatch:

if(x==16'b?0011100111000001)

next_state <= match;

else 

next_state <= nomatch;

match:

if(x==16'b?0011100111000001)

next_state <= match;

else 

next_state <=nomatch;

endcase

end

endmodule
