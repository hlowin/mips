// counter : 8bit counter
// chapter5 : p251

module counter #(parameter  N = 8)
                (
                input  wire clk,
                input  wire reset,
                output reg  [N-1:0] q
                );

  initial begin
    q <= 8'b00000000;
  end

  always @(posedge clk, posedge reset) begin
    if(reset) begin
      q <= 8'b00000000;
    end
    else begin
      q <= q + 1'b1;
    end
  end

endmodule