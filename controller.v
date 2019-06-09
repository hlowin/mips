// controller : controller module
// chapter7 : p406

module controller #(
              parameter OPWIDTH = 6,
              parameter FNWIDTH = 6,
              parameter ALUWIDTH = 3
             )
             (
              input  wire [OPWIDTH-1:0]  op,
              input  wire [FNWIDTH-1:0]  funct,
              input  wire                zero,
              output wire                memtoreg,
              output wire                memwrite,
              output wire                pcsrc,
              output wire                alusrc,
              output wire                regdst,
              output wire                regwrite,
              output wire                jump,
              output wire [ALUWIDTH-1:0] alucontrol
             );

wire [1:0] aluop;
wire       branch;

// main decoder
maindec md(
           .op(op),
           .memtoreg(memtoreg),
           .memwrite(memwrite),
           .branch(branch),
           .alusrc(alusrc),
           .regdst(regdst),
           .regwrite(regwrite),
           .jump(jump),
           .aluop(aluop)
          );

// alu decoder
aludec ad(
          .funct(funct),
          .aluop(aluop),
          .alucontrol(alucontrol)
);

assign pcsrc = branch & zero;

endmodule