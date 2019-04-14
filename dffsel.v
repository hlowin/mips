// dffsel : selecter

module dffsel(qin, din, ld, dout);

input wire qin;
input wire din;
input wire ld;

output reg dout;
reg d;

always @(ld) begin
  if(ld == 1'b1)
    dout <= qin;
  else if(ld == 1'b0)
    dout <= din;
end

endmodule