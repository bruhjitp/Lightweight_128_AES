`timescale 1ns / 1ps

module add_round_key(data, out, key);

input [127:0] data;
input [127:0] key;
output [127:0] out;

assign out = key ^ data;

endmodule
