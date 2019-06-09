// mips : mips module
// chapter7 : p405

module mips #(
              parameter BITWIDTH = 32,
              parameter OPWIDTH = 6,
              parameter FNWIDTH = 6
             )
             (
              input  wire clk,
              input  wire reset,
              input  wire [BITWIDTH-1:0] instr,
              input  wire [BITWIDTH-1:0] readdata,
              output wire [BITWIDTH-1:0] pc,
              output wire memwrite,
              output wire [BITWIDTH-1:0] aluout,
              output wire [BITWIDTH-1:0] writedata
             );

wire memtoreg;
wire alusrc;
wire regdst;
wire regwrite;
wire jump;
wire pcsrc;
wire zero;
wire [2:0] alucontrol;

controller c(
             .op(instr[BITWIDTH-1:(BITWIDTH-1)-(OPWIDTH-1)]),
             .funct(instr[FNWIDTH-1:0]),
             .zero(zero),
             .memtoreg(memtoreg),
             .memwrite(memwrite),
             .pcsrc(pcsrc),
             .alusrc(alusrc),
             .regdst(regdst),
             .regwrite(regwrite),
             .jump(jump),
             .alucontrol(alucontrol)
            );

datapath dp(
            .clk(clk),
            .reset(reset),
            .memtoreg(memtoreg),
            .pcsrc(pcsrc),
            .alusrc(alusrc),
            .regdst(regdst),
            .regwrite(regwrite),
            .jump(jump),
            .alucontrol(alucontrol),
            .zero(zero),
            .pc(pc),
            .instr(instr),
            .aluout(aluout),
            .writedata(writedata),
            .readdata(readdata)
           );

endmodule