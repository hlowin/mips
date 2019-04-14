// decoder : decoder

module decoder(op0in, op1in, op2in, op3in, cin, 
                aout, bout, ld0out, ld1out, ld2out, ld3out);

input wire op0in;
input wire op1in;
input wire op2in;
input wire op3in;

input wire cin;


output wire aout;
output wire bout;

output wire ld0out;
output wire ld1out;
output wire ld2out;
output wire ld3out;


// decode circuit
assign bout = op1in;
assign aout = op0in | op3in;

assign ld0out = op2in | op3in;
assign ld1out = ~op2in | op3in;
assign ld2out = op2in | ~op3in;
assign ld3out = ~op2in | ~op3in | (~op0in & cin);

endmodule