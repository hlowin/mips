// datasel : data selecter

module datasel(ain, bin, gbin, c0in, c1in, c2in, c3in, yout);

input wire ain;
input wire bin;

input wire gbin;

input wire c0in;
input wire c1in;
input wire c2in;
input wire c3in;

output reg yout;

always @(ain or bin or gbin) begin
  if(gbin == 1'b1) begin
    yout <= 1'b0;
  end
  else begin
    if(bin == 1'b0 && ain == 1'b0)
      yout <= c0in;
    if(bin == 1'b0 && ain == 1'b1)
      yout <= c1in;
    if(bin == 1'b1 && ain == 1'b0)
      yout <= c2in;
    if(bin == 1'b1 && ain == 1'b1)
      yout <= c3in;
  end
end

endmodule