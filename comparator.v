// comparator : 8bit comparator
// chapter5 : p240

module comparator #(parameter  N = 8)
              (
              input [N-1:0] a,
              input [N-1:0] b,
              output        eq,
              output        neq,
              output        lt,
              output        lte,
              output        gt,
              output        gte
              );

  assign eq  = (a == b);
  assign neq = (a != b);
  assign lt  = (a < b);
  assign lte = (a <= b);
  assign gt  = (a > b);
  assign gte = (a >= b);

endmodule