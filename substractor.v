// substractor : 8bit substractor
// chapter5 : p239

module substractor #(parameter  N = 8)
              (
              input  [N-1:0] a,
              input  [N-1:0] b,
              output [N-1:0] y
              );

  assign y = a - b;

endmodule