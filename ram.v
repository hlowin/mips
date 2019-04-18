// ram : 32bit data ram
// chapter5 : p262

module ram #(parameter  N = 6, M = 32)
            (
             input  wire clk,
             input  wire we,
             input  wire [N-1:0] adr,
             input  wire [M-1:0] din,
             output wire  [M-1:0] dout
            );

  reg [M-1:0] mem [2**N-1:0]; // 2**N-1 = 2^(N-1)

  always @(posedge clk) begin
    if(we) begin
      mem[adr] <= din;
    end
  end

  assign dout = mem[adr];

endmodule