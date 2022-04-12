// Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2021.2 (win64) Build 3367213 Tue Oct 19 02:48:09 MDT 2021
// Date        : Tue Mar 29 18:10:57 2022
// Host        : Surface-2-Quent running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top TP2_audioFIR_Speakerctrl_0_0 -prefix
//               TP2_audioFIR_Speakerctrl_0_0_ Speakerctrl_0_sim_netlist.v
// Design      : Speakerctrl_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a200tsbg484-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module TP2_audioFIR_Speakerctrl_0_0_Speakerctrl
   (SDOUT,
    out,
    done,
    rst,
    clk,
    audio_in);
  output SDOUT;
  output [2:0]out;
  output done;
  input rst;
  input clk;
  input [15:0]audio_in;

  wire SDOUT;
  wire [15:0]audio_in;
  wire clk;
  wire \div_cnt[10]_i_2_n_0 ;
  wire [9:0]div_cnt_reg;
  wire done;
  wire done_INST_0_i_1_n_0;
  wire [2:0]out;
  wire [15:0]p_1_in;
  wire [10:0]plusOp;
  wire rst;
  wire [14:0]shift_reg;
  wire shift_reg0;
  wire \shift_reg[15]_i_3_n_0 ;

  LUT1 #(
    .INIT(2'h1)) 
    \div_cnt[0]_i_1 
       (.I0(div_cnt_reg[0]),
        .O(plusOp[0]));
  LUT6 #(
    .INIT(64'hF7FFFFFF08000000)) 
    \div_cnt[10]_i_1 
       (.I0(div_cnt_reg[9]),
        .I1(div_cnt_reg[7]),
        .I2(\div_cnt[10]_i_2_n_0 ),
        .I3(div_cnt_reg[6]),
        .I4(div_cnt_reg[8]),
        .I5(out[2]),
        .O(plusOp[10]));
  LUT6 #(
    .INIT(64'h7FFFFFFFFFFFFFFF)) 
    \div_cnt[10]_i_2 
       (.I0(out[0]),
        .I1(div_cnt_reg[2]),
        .I2(div_cnt_reg[0]),
        .I3(div_cnt_reg[1]),
        .I4(div_cnt_reg[3]),
        .I5(out[1]),
        .O(\div_cnt[10]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \div_cnt[1]_i_1 
       (.I0(div_cnt_reg[0]),
        .I1(div_cnt_reg[1]),
        .O(plusOp[1]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \div_cnt[2]_i_1 
       (.I0(div_cnt_reg[1]),
        .I1(div_cnt_reg[0]),
        .I2(div_cnt_reg[2]),
        .O(plusOp[2]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \div_cnt[3]_i_1 
       (.I0(div_cnt_reg[2]),
        .I1(div_cnt_reg[0]),
        .I2(div_cnt_reg[1]),
        .I3(div_cnt_reg[3]),
        .O(plusOp[3]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \div_cnt[4]_i_1 
       (.I0(div_cnt_reg[3]),
        .I1(div_cnt_reg[1]),
        .I2(div_cnt_reg[0]),
        .I3(div_cnt_reg[2]),
        .I4(out[0]),
        .O(plusOp[4]));
  LUT6 #(
    .INIT(64'h7FFFFFFF80000000)) 
    \div_cnt[5]_i_1 
       (.I0(out[0]),
        .I1(div_cnt_reg[2]),
        .I2(div_cnt_reg[0]),
        .I3(div_cnt_reg[1]),
        .I4(div_cnt_reg[3]),
        .I5(out[1]),
        .O(plusOp[5]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT2 #(
    .INIT(4'h9)) 
    \div_cnt[6]_i_1 
       (.I0(\div_cnt[10]_i_2_n_0 ),
        .I1(div_cnt_reg[6]),
        .O(plusOp[6]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT3 #(
    .INIT(8'hD2)) 
    \div_cnt[7]_i_1 
       (.I0(div_cnt_reg[6]),
        .I1(\div_cnt[10]_i_2_n_0 ),
        .I2(div_cnt_reg[7]),
        .O(plusOp[7]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'hDF20)) 
    \div_cnt[8]_i_1 
       (.I0(div_cnt_reg[7]),
        .I1(\div_cnt[10]_i_2_n_0 ),
        .I2(div_cnt_reg[6]),
        .I3(div_cnt_reg[8]),
        .O(plusOp[8]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'hBFFF4000)) 
    \div_cnt[9]_i_1 
       (.I0(\div_cnt[10]_i_2_n_0 ),
        .I1(div_cnt_reg[8]),
        .I2(div_cnt_reg[7]),
        .I3(div_cnt_reg[6]),
        .I4(div_cnt_reg[9]),
        .O(plusOp[9]));
  FDRE \div_cnt_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(plusOp[0]),
        .Q(div_cnt_reg[0]),
        .R(rst));
  FDRE \div_cnt_reg[10] 
       (.C(clk),
        .CE(1'b1),
        .D(plusOp[10]),
        .Q(out[2]),
        .R(rst));
  FDRE \div_cnt_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(plusOp[1]),
        .Q(div_cnt_reg[1]),
        .R(rst));
  FDRE \div_cnt_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .D(plusOp[2]),
        .Q(div_cnt_reg[2]),
        .R(rst));
  FDRE \div_cnt_reg[3] 
       (.C(clk),
        .CE(1'b1),
        .D(plusOp[3]),
        .Q(div_cnt_reg[3]),
        .R(rst));
  FDRE \div_cnt_reg[4] 
       (.C(clk),
        .CE(1'b1),
        .D(plusOp[4]),
        .Q(out[0]),
        .R(rst));
  FDRE \div_cnt_reg[5] 
       (.C(clk),
        .CE(1'b1),
        .D(plusOp[5]),
        .Q(out[1]),
        .R(rst));
  FDRE \div_cnt_reg[6] 
       (.C(clk),
        .CE(1'b1),
        .D(plusOp[6]),
        .Q(div_cnt_reg[6]),
        .R(rst));
  FDRE \div_cnt_reg[7] 
       (.C(clk),
        .CE(1'b1),
        .D(plusOp[7]),
        .Q(div_cnt_reg[7]),
        .R(rst));
  FDRE \div_cnt_reg[8] 
       (.C(clk),
        .CE(1'b1),
        .D(plusOp[8]),
        .Q(div_cnt_reg[8]),
        .R(rst));
  FDRE \div_cnt_reg[9] 
       (.C(clk),
        .CE(1'b1),
        .D(plusOp[9]),
        .Q(div_cnt_reg[9]),
        .R(rst));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'h00000100)) 
    done_INST_0
       (.I0(done_INST_0_i_1_n_0),
        .I1(div_cnt_reg[8]),
        .I2(div_cnt_reg[7]),
        .I3(div_cnt_reg[6]),
        .I4(div_cnt_reg[9]),
        .O(done));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    done_INST_0_i_1
       (.I0(out[0]),
        .I1(out[1]),
        .I2(div_cnt_reg[2]),
        .I3(div_cnt_reg[3]),
        .I4(div_cnt_reg[1]),
        .I5(div_cnt_reg[0]),
        .O(done_INST_0_i_1_n_0));
  LUT6 #(
    .INIT(64'h0000000000020000)) 
    \shift_reg[0]_i_1 
       (.I0(audio_in[0]),
        .I1(done_INST_0_i_1_n_0),
        .I2(div_cnt_reg[8]),
        .I3(div_cnt_reg[7]),
        .I4(div_cnt_reg[6]),
        .I5(div_cnt_reg[9]),
        .O(p_1_in[0]));
  LUT6 #(
    .INIT(64'hAAAAAAABAAAAAAA8)) 
    \shift_reg[10]_i_1 
       (.I0(shift_reg[9]),
        .I1(\shift_reg[15]_i_3_n_0 ),
        .I2(div_cnt_reg[7]),
        .I3(div_cnt_reg[8]),
        .I4(done_INST_0_i_1_n_0),
        .I5(audio_in[10]),
        .O(p_1_in[10]));
  LUT6 #(
    .INIT(64'hAAAAAAABAAAAAAA8)) 
    \shift_reg[11]_i_1 
       (.I0(shift_reg[10]),
        .I1(\shift_reg[15]_i_3_n_0 ),
        .I2(div_cnt_reg[7]),
        .I3(div_cnt_reg[8]),
        .I4(done_INST_0_i_1_n_0),
        .I5(audio_in[11]),
        .O(p_1_in[11]));
  LUT6 #(
    .INIT(64'hAAAAAAABAAAAAAA8)) 
    \shift_reg[12]_i_1 
       (.I0(shift_reg[11]),
        .I1(\shift_reg[15]_i_3_n_0 ),
        .I2(div_cnt_reg[7]),
        .I3(div_cnt_reg[8]),
        .I4(done_INST_0_i_1_n_0),
        .I5(audio_in[12]),
        .O(p_1_in[12]));
  LUT6 #(
    .INIT(64'hAAAAAAABAAAAAAA8)) 
    \shift_reg[13]_i_1 
       (.I0(shift_reg[12]),
        .I1(\shift_reg[15]_i_3_n_0 ),
        .I2(div_cnt_reg[7]),
        .I3(div_cnt_reg[8]),
        .I4(done_INST_0_i_1_n_0),
        .I5(audio_in[13]),
        .O(p_1_in[13]));
  LUT6 #(
    .INIT(64'hAAAAAAABAAAAAAA8)) 
    \shift_reg[14]_i_1 
       (.I0(shift_reg[13]),
        .I1(\shift_reg[15]_i_3_n_0 ),
        .I2(div_cnt_reg[7]),
        .I3(div_cnt_reg[8]),
        .I4(done_INST_0_i_1_n_0),
        .I5(audio_in[14]),
        .O(p_1_in[14]));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    \shift_reg[15]_i_1 
       (.I0(div_cnt_reg[0]),
        .I1(div_cnt_reg[1]),
        .I2(div_cnt_reg[3]),
        .I3(div_cnt_reg[2]),
        .I4(out[1]),
        .I5(out[0]),
        .O(shift_reg0));
  LUT6 #(
    .INIT(64'hAAAAAAABAAAAAAA8)) 
    \shift_reg[15]_i_2 
       (.I0(shift_reg[14]),
        .I1(\shift_reg[15]_i_3_n_0 ),
        .I2(div_cnt_reg[7]),
        .I3(div_cnt_reg[8]),
        .I4(done_INST_0_i_1_n_0),
        .I5(audio_in[15]),
        .O(p_1_in[15]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \shift_reg[15]_i_3 
       (.I0(div_cnt_reg[9]),
        .I1(div_cnt_reg[6]),
        .O(\shift_reg[15]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAABAAAAAAA8)) 
    \shift_reg[1]_i_1 
       (.I0(shift_reg[0]),
        .I1(\shift_reg[15]_i_3_n_0 ),
        .I2(div_cnt_reg[7]),
        .I3(div_cnt_reg[8]),
        .I4(done_INST_0_i_1_n_0),
        .I5(audio_in[1]),
        .O(p_1_in[1]));
  LUT6 #(
    .INIT(64'hAAAAAAABAAAAAAA8)) 
    \shift_reg[2]_i_1 
       (.I0(shift_reg[1]),
        .I1(\shift_reg[15]_i_3_n_0 ),
        .I2(div_cnt_reg[7]),
        .I3(div_cnt_reg[8]),
        .I4(done_INST_0_i_1_n_0),
        .I5(audio_in[2]),
        .O(p_1_in[2]));
  LUT6 #(
    .INIT(64'hAAAAAAABAAAAAAA8)) 
    \shift_reg[3]_i_1 
       (.I0(shift_reg[2]),
        .I1(\shift_reg[15]_i_3_n_0 ),
        .I2(div_cnt_reg[7]),
        .I3(div_cnt_reg[8]),
        .I4(done_INST_0_i_1_n_0),
        .I5(audio_in[3]),
        .O(p_1_in[3]));
  LUT6 #(
    .INIT(64'hAAAAAAABAAAAAAA8)) 
    \shift_reg[4]_i_1 
       (.I0(shift_reg[3]),
        .I1(\shift_reg[15]_i_3_n_0 ),
        .I2(div_cnt_reg[7]),
        .I3(div_cnt_reg[8]),
        .I4(done_INST_0_i_1_n_0),
        .I5(audio_in[4]),
        .O(p_1_in[4]));
  LUT6 #(
    .INIT(64'hAAAAAAABAAAAAAA8)) 
    \shift_reg[5]_i_1 
       (.I0(shift_reg[4]),
        .I1(\shift_reg[15]_i_3_n_0 ),
        .I2(div_cnt_reg[7]),
        .I3(div_cnt_reg[8]),
        .I4(done_INST_0_i_1_n_0),
        .I5(audio_in[5]),
        .O(p_1_in[5]));
  LUT6 #(
    .INIT(64'hAAAAAAABAAAAAAA8)) 
    \shift_reg[6]_i_1 
       (.I0(shift_reg[5]),
        .I1(\shift_reg[15]_i_3_n_0 ),
        .I2(div_cnt_reg[7]),
        .I3(div_cnt_reg[8]),
        .I4(done_INST_0_i_1_n_0),
        .I5(audio_in[6]),
        .O(p_1_in[6]));
  LUT6 #(
    .INIT(64'hAAAAAAABAAAAAAA8)) 
    \shift_reg[7]_i_1 
       (.I0(shift_reg[6]),
        .I1(\shift_reg[15]_i_3_n_0 ),
        .I2(div_cnt_reg[7]),
        .I3(div_cnt_reg[8]),
        .I4(done_INST_0_i_1_n_0),
        .I5(audio_in[7]),
        .O(p_1_in[7]));
  LUT6 #(
    .INIT(64'hAAAAAAABAAAAAAA8)) 
    \shift_reg[8]_i_1 
       (.I0(shift_reg[7]),
        .I1(\shift_reg[15]_i_3_n_0 ),
        .I2(div_cnt_reg[7]),
        .I3(div_cnt_reg[8]),
        .I4(done_INST_0_i_1_n_0),
        .I5(audio_in[8]),
        .O(p_1_in[8]));
  LUT6 #(
    .INIT(64'hAAAAAAABAAAAAAA8)) 
    \shift_reg[9]_i_1 
       (.I0(shift_reg[8]),
        .I1(\shift_reg[15]_i_3_n_0 ),
        .I2(div_cnt_reg[7]),
        .I3(div_cnt_reg[8]),
        .I4(done_INST_0_i_1_n_0),
        .I5(audio_in[9]),
        .O(p_1_in[9]));
  FDRE \shift_reg_reg[0] 
       (.C(clk),
        .CE(shift_reg0),
        .D(p_1_in[0]),
        .Q(shift_reg[0]),
        .R(rst));
  FDRE \shift_reg_reg[10] 
       (.C(clk),
        .CE(shift_reg0),
        .D(p_1_in[10]),
        .Q(shift_reg[10]),
        .R(rst));
  FDRE \shift_reg_reg[11] 
       (.C(clk),
        .CE(shift_reg0),
        .D(p_1_in[11]),
        .Q(shift_reg[11]),
        .R(rst));
  FDRE \shift_reg_reg[12] 
       (.C(clk),
        .CE(shift_reg0),
        .D(p_1_in[12]),
        .Q(shift_reg[12]),
        .R(rst));
  FDRE \shift_reg_reg[13] 
       (.C(clk),
        .CE(shift_reg0),
        .D(p_1_in[13]),
        .Q(shift_reg[13]),
        .R(rst));
  FDRE \shift_reg_reg[14] 
       (.C(clk),
        .CE(shift_reg0),
        .D(p_1_in[14]),
        .Q(shift_reg[14]),
        .R(rst));
  FDRE \shift_reg_reg[15] 
       (.C(clk),
        .CE(shift_reg0),
        .D(p_1_in[15]),
        .Q(SDOUT),
        .R(rst));
  FDRE \shift_reg_reg[1] 
       (.C(clk),
        .CE(shift_reg0),
        .D(p_1_in[1]),
        .Q(shift_reg[1]),
        .R(rst));
  FDRE \shift_reg_reg[2] 
       (.C(clk),
        .CE(shift_reg0),
        .D(p_1_in[2]),
        .Q(shift_reg[2]),
        .R(rst));
  FDRE \shift_reg_reg[3] 
       (.C(clk),
        .CE(shift_reg0),
        .D(p_1_in[3]),
        .Q(shift_reg[3]),
        .R(rst));
  FDRE \shift_reg_reg[4] 
       (.C(clk),
        .CE(shift_reg0),
        .D(p_1_in[4]),
        .Q(shift_reg[4]),
        .R(rst));
  FDRE \shift_reg_reg[5] 
       (.C(clk),
        .CE(shift_reg0),
        .D(p_1_in[5]),
        .Q(shift_reg[5]),
        .R(rst));
  FDRE \shift_reg_reg[6] 
       (.C(clk),
        .CE(shift_reg0),
        .D(p_1_in[6]),
        .Q(shift_reg[6]),
        .R(rst));
  FDRE \shift_reg_reg[7] 
       (.C(clk),
        .CE(shift_reg0),
        .D(p_1_in[7]),
        .Q(shift_reg[7]),
        .R(rst));
  FDRE \shift_reg_reg[8] 
       (.C(clk),
        .CE(shift_reg0),
        .D(p_1_in[8]),
        .Q(shift_reg[8]),
        .R(rst));
  FDRE \shift_reg_reg[9] 
       (.C(clk),
        .CE(shift_reg0),
        .D(p_1_in[9]),
        .Q(shift_reg[9]),
        .R(rst));
endmodule

(* CHECK_LICENSE_TYPE = "Speakerctrl_0,Speakerctrl,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* ip_definition_source = "package_project" *) 
(* x_core_info = "Speakerctrl,Vivado 2021.2" *) 
(* NotValidForBitStream *)
module TP2_audioFIR_Speakerctrl_0_0
   (clk,
    rst,
    Led,
    audio_in,
    done,
    SDOUT,
    SCLK,
    MCLK,
    LRCK);
  (* x_interface_info = "xilinx.com:signal:clock:1.0 clk CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME clk, ASSOCIATED_RESET audio_in:done:Led:LRCK:MCLK:SCLK:SDOUT, FREQ_TOLERANCE_HZ 0, PHASE 0.0, INSERT_VIP 0" *) input clk;
  (* x_interface_info = "xilinx.com:signal:reset:1.0 rst RST" *) (* x_interface_parameter = "XIL_INTERFACENAME rst, POLARITY ACTIVE_HIGH, INSERT_VIP 0" *) input rst;
  (* x_interface_info = "xilinx.com:signal:data:1.0 Led DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME Led, LAYERED_METADATA undef" *) output [7:0]Led;
  (* x_interface_info = "xilinx.com:signal:data:1.0 audio_in DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME audio_in, LAYERED_METADATA undef" *) input [15:0]audio_in;
  (* x_interface_info = "xilinx.com:signal:data:1.0 done DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME done, LAYERED_METADATA undef" *) output done;
  (* x_interface_info = "xilinx.com:signal:data:1.0 SDOUT DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME SDOUT, LAYERED_METADATA undef" *) output SDOUT;
  (* x_interface_info = "xilinx.com:signal:data:1.0 SCLK DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME SCLK, LAYERED_METADATA undef" *) output SCLK;
  (* x_interface_info = "xilinx.com:signal:data:1.0 MCLK DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME MCLK, LAYERED_METADATA undef" *) output MCLK;
  (* x_interface_info = "xilinx.com:signal:data:1.0 LRCK DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME LRCK, LAYERED_METADATA undef" *) output LRCK;

  wire LRCK;
  wire MCLK;
  wire SCLK;
  wire SDOUT;
  wire [15:0]audio_in;
  wire clk;
  wire done;
  wire rst;

  assign Led[7:0] = audio_in[15:8];
  TP2_audioFIR_Speakerctrl_0_0_Speakerctrl U0
       (.SDOUT(SDOUT),
        .audio_in(audio_in),
        .clk(clk),
        .done(done),
        .out({LRCK,SCLK,MCLK}),
        .rst(rst));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;
    parameter GRES_WIDTH = 10000;
    parameter GRES_START = 10000;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    wire GRESTORE;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;
    reg GRESTORE_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;
    assign (strong1, weak0) GRESTORE = GRESTORE_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

    initial begin 
	GRESTORE_int = 1'b0;
	#(GRES_START);
	GRESTORE_int = 1'b1;
	#(GRES_WIDTH);
	GRESTORE_int = 1'b0;
    end

endmodule
`endif
