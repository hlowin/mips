// rom : Read Only Memory Emulation

module rom(a0in, a1in, a2in, a3in,
            d0out, d1out, d2out, d3out, d4out, d5out, d6out, d7out);

input wire a0in;
input wire a1in;
input wire a2in;
input wire a3in;
reg [3:0] addr;


output reg d0out;
output reg d1out;
output reg d2out;
output reg d3out;
output reg d4out;
output reg d5out;
output reg d6out;
output reg d7out;
reg [7:0] data;

initial begin

end

always @(a0in or a1in or a2in or a3in) begin
  addr <= {a3in, a2in, a1in, a0in};

  if(addr == 4'b0000)
    data <= 8'b00110000;
  if(addr == 4'b0001)
    data <= 8'b00000001;
  if(addr == 4'b0010)
    data <= 8'b01000000;
  if(addr == 4'b0011)
    data <= 8'b10010000;
  if(addr == 4'b0100)
    data <= 8'b11110001;




  {d7out, d6out, d5out, d4out, d3out, d2out, d1out, d0out} <= data;
end

endmodule