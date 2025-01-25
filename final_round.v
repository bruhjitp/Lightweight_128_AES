`timescale 1ns / 1ps

module final_round(in,key,out);
input [127:0] in;
output [127:0] out;
input [127:0] key;
wire [127:0] afterSubBytes;
wire [127:0] afterShiftRows;
//wire [127:0] afterMixColumns;
//wire [127:0] afterAddroundKey;

substitute_bytes s(in,afterSubBytes);
shift_rows r(afterSubBytes,afterShiftRows);
//mix_columns m(afterShiftRows,afterMixColumns);
add_round_key b(afterShiftRows,out,key);
		
endmodule
