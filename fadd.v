// fadd : full adder

module fadd(cin, ain, bin, sout, cout);

input wire cin;
input wire ain;
input wire bin;

output wire sout;
output wire cout;

assign cout = (ain & bin) | (ain & cin) | (bin & cin);
assign sout = ain ^ bin ^ cin;

endmodule