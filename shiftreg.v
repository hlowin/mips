// shiftreg : 8bit shift register
// chapter5 : p252

module shiftreg #(parameter  N = 8)
                 (
                  input  wire clk,
                  input  wire reset,
                  input  wire load,
                  input  wire sin,
                  input  wire [N-1:0] d,
                  output reg  [N-1:0] q,
                  output wire sout
                 );

  initial begin
    q    <= 8'b00000000;
  end

  always @(posedge clk, posedge reset) begin
    if(reset) begin
      q <= 8'b00000000;
    end
    else if(load) begin
      q <= d;
    end
    else begin
      q <= {q[N-2:0], sin};
    end
  end

  assign sout = q[N-1];

endmodule