// multiplier : 8bit multiplier
// chapter5 : p244

module multiplier #(parameter  N = 8)
                   (
                    input  [N-1:0] a,
                    input  [N-1:0] b,
                    output [N-1:0] y
                   );

  assign y = a * b;

endmodule