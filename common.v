`timescale 1ns / 1ps

/**************************************************************
module: sbox
use: this is lookup table for byte substitution
for 128 bit plain text in each round
**************************************************************/
module sbox(in_byte,out_byte);

input  [7:0] in_byte; 
output [7:0] out_byte;
    
reg [7:0] out_byte;
    
    
   always @(in_byte)
    case (in_byte)
      8'h00: out_byte=8'h63;
	   8'h01: out_byte=8'h7c;
	   8'h02: out_byte=8'h77;
	   8'h03: out_byte=8'h7b;
	   8'h04: out_byte=8'hf2;
	   8'h05: out_byte=8'h6b;
	   8'h06: out_byte=8'h6f;
	   8'h07: out_byte=8'hc5;
	   8'h08: out_byte=8'h30;
	   8'h09: out_byte=8'h01;
	   8'h0a: out_byte=8'h67;
	   8'h0b: out_byte=8'h2b;
	   8'h0c: out_byte=8'hfe;
	   8'h0d: out_byte=8'hd7;
	   8'h0e: out_byte=8'hab;
	   8'h0f: out_byte=8'h76;
	   8'h10: out_byte=8'hca;
	   8'h11: out_byte=8'h82;
	   8'h12: out_byte=8'hc9;
	   8'h13: out_byte=8'h7d;
	   8'h14: out_byte=8'hfa;
	   8'h15: out_byte=8'h59;
	   8'h16: out_byte=8'h47;
	   8'h17: out_byte=8'hf0;
	   8'h18: out_byte=8'had;
	   8'h19: out_byte=8'hd4;
	   8'h1a: out_byte=8'ha2;
	   8'h1b: out_byte=8'haf;
	   8'h1c: out_byte=8'h9c;
	   8'h1d: out_byte=8'ha4;
	   8'h1e: out_byte=8'h72;
	   8'h1f: out_byte=8'hc0;
	   8'h20: out_byte=8'hb7;
	   8'h21: out_byte=8'hfd;
	   8'h22: out_byte=8'h93;
	   8'h23: out_byte=8'h26;
	   8'h24: out_byte=8'h36;
	   8'h25: out_byte=8'h3f;
	   8'h26: out_byte=8'hf7;
	   8'h27: out_byte=8'hcc;
	   8'h28: out_byte=8'h34;
	   8'h29: out_byte=8'ha5;
	   8'h2a: out_byte=8'he5;
	   8'h2b: out_byte=8'hf1;
	   8'h2c: out_byte=8'h71;
	   8'h2d: out_byte=8'hd8;
	   8'h2e: out_byte=8'h31;
	   8'h2f: out_byte=8'h15;
	   8'h30: out_byte=8'h04;
	   8'h31: out_byte=8'hc7;
	   8'h32: out_byte=8'h23;
	   8'h33: out_byte=8'hc3;
	   8'h34: out_byte=8'h18;
	   8'h35: out_byte=8'h96;
	   8'h36: out_byte=8'h05;
	   8'h37: out_byte=8'h9a;
	   8'h38: out_byte=8'h07;
	   8'h39: out_byte=8'h12;
	   8'h3a: out_byte=8'h80;
	   8'h3b: out_byte=8'he2;
	   8'h3c: out_byte=8'heb;
	   8'h3d: out_byte=8'h27;
	   8'h3e: out_byte=8'hb2;
	   8'h3f: out_byte=8'h75;
	   8'h40: out_byte=8'h09;
	   8'h41: out_byte=8'h83;
	   8'h42: out_byte=8'h2c;
	   8'h43: out_byte=8'h1a;
	   8'h44: out_byte=8'h1b;
	   8'h45: out_byte=8'h6e;
	   8'h46: out_byte=8'h5a;
	   8'h47: out_byte=8'ha0;
	   8'h48: out_byte=8'h52;
	   8'h49: out_byte=8'h3b;
	   8'h4a: out_byte=8'hd6;
	   8'h4b: out_byte=8'hb3;
	   8'h4c: out_byte=8'h29;
	   8'h4d: out_byte=8'he3;
	   8'h4e: out_byte=8'h2f;
	   8'h4f: out_byte=8'h84;
	   8'h50: out_byte=8'h53;
	   8'h51: out_byte=8'hd1;
	   8'h52: out_byte=8'h00;
	   8'h53: out_byte=8'hed;
	   8'h54: out_byte=8'h20;
	   8'h55: out_byte=8'hfc;
	   8'h56: out_byte=8'hb1;
	   8'h57: out_byte=8'h5b;
	   8'h58: out_byte=8'h6a;
	   8'h59: out_byte=8'hcb;
	   8'h5a: out_byte=8'hbe;
	   8'h5b: out_byte=8'h39;
	   8'h5c: out_byte=8'h4a;
	   8'h5d: out_byte=8'h4c;
	   8'h5e: out_byte=8'h58;
	   8'h5f: out_byte=8'hcf;
	   8'h60: out_byte=8'hd0;
	   8'h61: out_byte=8'hef;
	   8'h62: out_byte=8'haa;
	   8'h63: out_byte=8'hfb;
	   8'h64: out_byte=8'h43;
	   8'h65: out_byte=8'h4d;
	   8'h66: out_byte=8'h33;
	   8'h67: out_byte=8'h85;
	   8'h68: out_byte=8'h45;
	   8'h69: out_byte=8'hf9;
	   8'h6a: out_byte=8'h02;
	   8'h6b: out_byte=8'h7f;
	   8'h6c: out_byte=8'h50;
	   8'h6d: out_byte=8'h3c;
	   8'h6e: out_byte=8'h9f;
	   8'h6f: out_byte=8'ha8;
	   8'h70: out_byte=8'h51;
	   8'h71: out_byte=8'ha3;
	   8'h72: out_byte=8'h40;
	   8'h73: out_byte=8'h8f;
	   8'h74: out_byte=8'h92;
	   8'h75: out_byte=8'h9d;
	   8'h76: out_byte=8'h38;
	   8'h77: out_byte=8'hf5;
	   8'h78: out_byte=8'hbc;
	   8'h79: out_byte=8'hb6;
	   8'h7a: out_byte=8'hda;
	   8'h7b: out_byte=8'h21;
	   8'h7c: out_byte=8'h10;
	   8'h7d: out_byte=8'hff;
	   8'h7e: out_byte=8'hf3;
	   8'h7f: out_byte=8'hd2;
	   8'h80: out_byte=8'hcd;
	   8'h81: out_byte=8'h0c;
	   8'h82: out_byte=8'h13;
	   8'h83: out_byte=8'hec;
	   8'h84: out_byte=8'h5f;
	   8'h85: out_byte=8'h97;
	   8'h86: out_byte=8'h44;
	   8'h87: out_byte=8'h17;
	   8'h88: out_byte=8'hc4;
	   8'h89: out_byte=8'ha7;
	   8'h8a: out_byte=8'h7e;
	   8'h8b: out_byte=8'h3d;
	   8'h8c: out_byte=8'h64;
	   8'h8d: out_byte=8'h5d;
	   8'h8e: out_byte=8'h19;
	   8'h8f: out_byte=8'h73;
	   8'h90: out_byte=8'h60;
	   8'h91: out_byte=8'h81;
	   8'h92: out_byte=8'h4f;
	   8'h93: out_byte=8'hdc;
	   8'h94: out_byte=8'h22;
	   8'h95: out_byte=8'h2a;
	   8'h96: out_byte=8'h90;
	   8'h97: out_byte=8'h88;
	   8'h98: out_byte=8'h46;
	   8'h99: out_byte=8'hee;
	   8'h9a: out_byte=8'hb8;
	   8'h9b: out_byte=8'h14;
	   8'h9c: out_byte=8'hde;
	   8'h9d: out_byte=8'h5e;
	   8'h9e: out_byte=8'h0b;
	   8'h9f: out_byte=8'hdb;
	   8'ha0: out_byte=8'he0;
	   8'ha1: out_byte=8'h32;
	   8'ha2: out_byte=8'h3a;
	   8'ha3: out_byte=8'h0a;
	   8'ha4: out_byte=8'h49;
	   8'ha5: out_byte=8'h06;
	   8'ha6: out_byte=8'h24;
	   8'ha7: out_byte=8'h5c;
	   8'ha8: out_byte=8'hc2;
	   8'ha9: out_byte=8'hd3;
	   8'haa: out_byte=8'hac;
	   8'hab: out_byte=8'h62;
	   8'hac: out_byte=8'h91;
	   8'had: out_byte=8'h95;
	   8'hae: out_byte=8'he4;
	   8'haf: out_byte=8'h79;
	   8'hb0: out_byte=8'he7;
	   8'hb1: out_byte=8'hc8;
	   8'hb2: out_byte=8'h37;
	   8'hb3: out_byte=8'h6d;
	   8'hb4: out_byte=8'h8d;
	   8'hb5: out_byte=8'hd5;
	   8'hb6: out_byte=8'h4e;
	   8'hb7: out_byte=8'ha9;
	   8'hb8: out_byte=8'h6c;
	   8'hb9: out_byte=8'h56;
	   8'hba: out_byte=8'hf4;
	   8'hbb: out_byte=8'hea;
	   8'hbc: out_byte=8'h65;
	   8'hbd: out_byte=8'h7a;
	   8'hbe: out_byte=8'hae;
	   8'hbf: out_byte=8'h08;
	   8'hc0: out_byte=8'hba;
	   8'hc1: out_byte=8'h78;
	   8'hc2: out_byte=8'h25;
	   8'hc3: out_byte=8'h2e;
	   8'hc4: out_byte=8'h1c;
	   8'hc5: out_byte=8'ha6;
	   8'hc6: out_byte=8'hb4;
	   8'hc7: out_byte=8'hc6;
	   8'hc8: out_byte=8'he8;
	   8'hc9: out_byte=8'hdd;
	   8'hca: out_byte=8'h74;
	   8'hcb: out_byte=8'h1f;
	   8'hcc: out_byte=8'h4b;
	   8'hcd: out_byte=8'hbd;
	   8'hce: out_byte=8'h8b;
	   8'hcf: out_byte=8'h8a;
	   8'hd0: out_byte=8'h70;
	   8'hd1: out_byte=8'h3e;
	   8'hd2: out_byte=8'hb5;
	   8'hd3: out_byte=8'h66;
	   8'hd4: out_byte=8'h48;
	   8'hd5: out_byte=8'h03;
	   8'hd6: out_byte=8'hf6;
	   8'hd7: out_byte=8'h0e;
	   8'hd8: out_byte=8'h61;
	   8'hd9: out_byte=8'h35;
	   8'hda: out_byte=8'h57;
	   8'hdb: out_byte=8'hb9;
	   8'hdc: out_byte=8'h86;
	   8'hdd: out_byte=8'hc1;
	   8'hde: out_byte=8'h1d;
	   8'hdf: out_byte=8'h9e;
	   8'he0: out_byte=8'he1;
	   8'he1: out_byte=8'hf8;
	   8'he2: out_byte=8'h98;
	   8'he3: out_byte=8'h11;
	   8'he4: out_byte=8'h69;
	   8'he5: out_byte=8'hd9;
	   8'he6: out_byte=8'h8e;
	   8'he7: out_byte=8'h94;
	   8'he8: out_byte=8'h9b;
	   8'he9: out_byte=8'h1e;
	   8'hea: out_byte=8'h87;
	   8'heb: out_byte=8'he9;
	   8'hec: out_byte=8'hce;
	   8'hed: out_byte=8'h55;
	   8'hee: out_byte=8'h28;
	   8'hef: out_byte=8'hdf;
	   8'hf0: out_byte=8'h8c;
	   8'hf1: out_byte=8'ha1;
	   8'hf2: out_byte=8'h89;
	   8'hf3: out_byte=8'h0d;
	   8'hf4: out_byte=8'hbf;
	   8'hf5: out_byte=8'he6;
	   8'hf6: out_byte=8'h42;
	   8'hf7: out_byte=8'h68;
	   8'hf8: out_byte=8'h41;
	   8'hf9: out_byte=8'h99;
	   8'hfa: out_byte=8'h2d;
	   8'hfb: out_byte=8'h0f;
	   8'hfc: out_byte=8'hb0;
	   8'hfd: out_byte=8'h54;
	   8'hfe: out_byte=8'hbb;
	   8'hff: out_byte=8'h16;
	endcase

endmodule

//**************************************************************
module key_serialiser(clk, in_key, count, out_key);
input clk;
input [1407:0] in_key;
input [3:0] count;
output reg [127:0] out_key;

counter c0 (.clk(clk), .count(count));

always @(posedge clk)
begin
case(count)
0: out_key = in_key[1407:1280];
1: out_key = in_key[1279:1152];
2: out_key = in_key[1151:1024];
3: out_key = in_key[1023:896];
4: out_key = in_key[895:768];
5: out_key = in_key[767:640];
6: out_key = in_key[639:512];
7: out_key = in_key[511:384];
8: out_key = in_key[383:256];
9: out_key = in_key[255:128];
10: out_key = in_key[127:0];

endcase
end
endmodule

module counter(clk, count);
input clk;
output reg [3:0]count;

initial count=4'd0;

always @(posedge clk)
begin
    if(count<10)
        count = count+4'd1;
    else
        count = 4'd0;
end
endmodule

module mux_round_enc(in_0, in_not0, sel_count, out);
input [127:0] in_0, in_not0;
input [3:0] sel_count;
output reg [127:0] out;

always@(*)
begin
if(sel_count==4'd0)
    out=in_0;
else if(sel_count==~4'd10);

else
    out=in_not0;
end
endmodule

module demux_round_en(in, sel_count, out_10, out_not10);
input [127:0] in;
input [3:0] sel_count;
output reg [127:0] out_10, out_not10;

always@(*)
begin
if(sel_count==4'd10)
    out_10=in;
else
    out_not10=in;
end
endmodule

module demux_key_ser(in, sel_count, out_0, out_10, out_other);
input [127:0] in;
input [3:0] sel_count;
output reg [127:0] out_0, out_10, out_other;

always@(*)
begin
if(sel_count==4'd0)
    out_0 = in;
else if(sel_count==4'd10)
    out_10 = in;
else
    out_other=in;
end
endmodule

module dff128(din, dout, clk);
input [127:0] din;
input clk;
output reg [127:0]dout;

//initial dout=0;
always@(posedge clk)
    dout=din;
endmodule

module dff4(din, dout, clk);
input [3:0] din;
input clk;
output reg [3:0]dout;

//initial dout=0;
always@(posedge clk)
    dout=din;
endmodule

module clock_en(clken, clk, rst, gatedclk);
input clken, clk, rst;
output gatedclk;
reg temp;
wire tempclk=clk;
always@(negedge clk)
begin
if(rst==1'b1)
    temp=1'b0;
else
    begin
    if(clken==1'b0)
        temp=1'b0;
    else if(clken==1'b1)
        temp=tempclk;
    end
end
and(gatedclk,clken, temp);
endmodule