// debug : reg debug module

module debug(flin, aout, bout, ldout);

input wire flin;

output reg aout;
output reg bout;
output reg ldout;

initial begin
  aout <= 1'b0;
  bout <= 1'b0;
  ldout <= 1'b1;
end

always @(flin) begin
  if(flin == 1'b0) begin
    aout <= 1'b1;
    bout <= 1'b1;

    ldout <= 1'b0;
  end
  else begin
    aout <= 1'b0;
    bout <= 1'b0;

    ldout <= 1'b1;
  end
end

endmodule