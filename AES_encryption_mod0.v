`timescale 1ns / 1ps

module AES_encryption_mod0#(parameter N=128,parameter Nr=10,parameter Nk=4)(clk,rst,en,in,key,out);
input clk,rst,en;
input [127:0] in;
input [N-1:0] key;
output [127:0] out;
wire [127:0] tempkey;
wire [127:0]temp[10:0];
wire [3:0]counttmp[1:0];
wire gclk;
wire [3:0] count;
wire [(128*(Nr+1))-1 :0] fullkeys;
wire [127:0] afterDemuxKeySer0,afterDemuxKeySer10,afterDemuxKeySerOther;
wire [127:0] afterAddRoundKey;
wire [127:0] afterRoundEnc;
wire [127:0] afterRoundEncDemux;

clock_en ce (en, clk, rst, gclk);
counter co (gclk, count);
key_expansion #(Nk,Nr) ke (key,fullkeys);
key_serialiser ks (gclk, fullkeys, count, tempkey);
demux_key_ser dks (tempkey, count, temp[0], temp[1], temp[2]);
dff128 d0 (in, temp[3], gclk);//data input to add round
dff128 d1 (temp[0], afterDemuxKeySer0, gclk);//key to add round key
dff128 d2 (temp[1], temp[4], gclk);//key to round encryption
dff128 d3 (temp[4], afterDemuxKeySerOther, gclk);
dff128 d4 (temp[2], temp[5], gclk);//key to last round
dff128 d5 (temp[5], temp[6], gclk);
dff128 d6 (temp[6], afterDemuxKeySer10, gclk);
add_round_key ark (temp[3], temp[7], afterDemuxKeySer0);
dff128 d7 (temp[7], afterAddRoundKey, gclk);
dff128 d8 (temp[10], afterRoundEncDemuxNot9, gclk);
dff4 u0 (count, counttmp[0], gclk);
dff4 u1 (counttmp[0], counttmp[1], gclk);
mux_round_enc mre (afterAddRoundKey, afterRoundEncDemux, counttmp[1], temp[8]);
round_encryption re (temp[8],afterDemuxKeySerOther,afterRoundEnc);
demux_round_en dre (afterRoundEnc, counttmp[1], temp[9], temp[10]);
dff128 d9 (temp[9], afterRoundEncDemux9, gclk);
final_round fr (afterRoundEncDemux9,afterDemuxKeySer10,out);

endmodule