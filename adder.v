// adder : 8bit full adder
// chapter5 : p238

module adder #(parameter  N = 8)
              (
              input [N-1:0]  a,
              input [N-1:0]  b,
              input          cin, 
              output [N-1:0] s, 
              output         cout 
              );

  assign {cout, s} = a + b + cin;

endmodule