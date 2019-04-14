// dflipf : DFlipFlop

module dflipf(din, rst, clk, qout);

input wire rst;
input wire din;
input wire clk;

output reg qout;

always @(posedge clk or negedge rst) begin
  if(rst == 1'b0)
    qout <= 1'b0;
  else
    qout <= din;
end

endmodule