// Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2021.2 (win64) Build 3367213 Tue Oct 19 02:48:09 MDT 2021
// Date        : Tue Mar 29 18:32:50 2022
// Host        : Surface-2-Quent running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top TP2_audioFIR_PmodMICRefComp_0_0 -prefix
//               TP2_audioFIR_PmodMICRefComp_0_0_ TP2_audioFIR_PmodMICRefComp_0_0_sim_netlist.v
// Design      : TP2_audioFIR_PmodMICRefComp_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a200tsbg484-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module TP2_audioFIR_PmodMICRefComp_0_0_PmodMICRefComp
   (\FSM_onehot_current_state_reg[0]_0 ,
    DATA,
    SCLK,
    nCS,
    RST,
    CLK,
    SDATA,
    START);
  output \FSM_onehot_current_state_reg[0]_0 ;
  output [11:0]DATA;
  output SCLK;
  output nCS;
  input RST;
  input CLK;
  input SDATA;
  input START;

  wire CLK;
  wire [11:0]DATA;
  wire \FSM_onehot_current_state[0]_i_1_n_0 ;
  wire \FSM_onehot_current_state[0]_i_2_n_0 ;
  wire \FSM_onehot_current_state[0]_i_4_n_0 ;
  wire \FSM_onehot_current_state[0]_i_6_n_0 ;
  wire \FSM_onehot_current_state[0]_i_7_n_0 ;
  wire \FSM_onehot_current_state[1]_i_1_n_0 ;
  wire \FSM_onehot_current_state[2]_i_1_n_0 ;
  wire \FSM_onehot_current_state_reg[0]_0 ;
  wire \FSM_onehot_current_state_reg[0]_i_3_n_0 ;
  wire \FSM_onehot_current_state_reg_n_0_[2] ;
  wire RST;
  wire SCLK;
  wire SDATA;
  wire START;
  wire [1:0]clk_counter_reg;
  wire clk_en__1;
  wire nCS;
  wire [2:0]plusOp;
  wire [3:0]plusOp__0;
  wire shiftCounter;
  wire \shiftCounter[2]_i_1_n_0 ;
  wire [3:0]shiftCounter_reg;
  wire started_ok;
  wire synch_START;
  wire synch_START_i_1_n_0;
  wire temp;
  wire \temp_reg_n_0_[0] ;
  wire \temp_reg_n_0_[10] ;
  wire \temp_reg_n_0_[11] ;
  wire \temp_reg_n_0_[1] ;
  wire \temp_reg_n_0_[2] ;
  wire \temp_reg_n_0_[3] ;
  wire \temp_reg_n_0_[4] ;
  wire \temp_reg_n_0_[5] ;
  wire \temp_reg_n_0_[6] ;
  wire \temp_reg_n_0_[7] ;
  wire \temp_reg_n_0_[8] ;
  wire \temp_reg_n_0_[9] ;

  LUT5 #(
    .INIT(32'h00000001)) 
    \DATA[11]_i_1 
       (.I0(SCLK),
        .I1(clk_counter_reg[0]),
        .I2(clk_counter_reg[1]),
        .I3(started_ok),
        .I4(\FSM_onehot_current_state_reg[0]_0 ),
        .O(shiftCounter));
  FDRE \DATA_reg[0] 
       (.C(CLK),
        .CE(shiftCounter),
        .D(\temp_reg_n_0_[0] ),
        .Q(DATA[0]),
        .R(1'b0));
  FDRE \DATA_reg[10] 
       (.C(CLK),
        .CE(shiftCounter),
        .D(\temp_reg_n_0_[10] ),
        .Q(DATA[10]),
        .R(1'b0));
  FDRE \DATA_reg[11] 
       (.C(CLK),
        .CE(shiftCounter),
        .D(\temp_reg_n_0_[11] ),
        .Q(DATA[11]),
        .R(1'b0));
  FDRE \DATA_reg[1] 
       (.C(CLK),
        .CE(shiftCounter),
        .D(\temp_reg_n_0_[1] ),
        .Q(DATA[1]),
        .R(1'b0));
  FDRE \DATA_reg[2] 
       (.C(CLK),
        .CE(shiftCounter),
        .D(\temp_reg_n_0_[2] ),
        .Q(DATA[2]),
        .R(1'b0));
  FDRE \DATA_reg[3] 
       (.C(CLK),
        .CE(shiftCounter),
        .D(\temp_reg_n_0_[3] ),
        .Q(DATA[3]),
        .R(1'b0));
  FDRE \DATA_reg[4] 
       (.C(CLK),
        .CE(shiftCounter),
        .D(\temp_reg_n_0_[4] ),
        .Q(DATA[4]),
        .R(1'b0));
  FDRE \DATA_reg[5] 
       (.C(CLK),
        .CE(shiftCounter),
        .D(\temp_reg_n_0_[5] ),
        .Q(DATA[5]),
        .R(1'b0));
  FDRE \DATA_reg[6] 
       (.C(CLK),
        .CE(shiftCounter),
        .D(\temp_reg_n_0_[6] ),
        .Q(DATA[6]),
        .R(1'b0));
  FDRE \DATA_reg[7] 
       (.C(CLK),
        .CE(shiftCounter),
        .D(\temp_reg_n_0_[7] ),
        .Q(DATA[7]),
        .R(1'b0));
  FDRE \DATA_reg[8] 
       (.C(CLK),
        .CE(shiftCounter),
        .D(\temp_reg_n_0_[8] ),
        .Q(DATA[8]),
        .R(1'b0));
  FDRE \DATA_reg[9] 
       (.C(CLK),
        .CE(shiftCounter),
        .D(\temp_reg_n_0_[9] ),
        .Q(DATA[9]),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hFFFFFE02AAAAAAAA)) 
    \FSM_onehot_current_state[0]_i_1 
       (.I0(\FSM_onehot_current_state_reg[0]_0 ),
        .I1(\FSM_onehot_current_state[0]_i_2_n_0 ),
        .I2(\FSM_onehot_current_state_reg[0]_i_3_n_0 ),
        .I3(\FSM_onehot_current_state[0]_i_4_n_0 ),
        .I4(RST),
        .I5(clk_en__1),
        .O(\FSM_onehot_current_state[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'hF444)) 
    \FSM_onehot_current_state[0]_i_2 
       (.I0(START),
        .I1(\FSM_onehot_current_state_reg_n_0_[2] ),
        .I2(synch_START),
        .I3(\FSM_onehot_current_state_reg[0]_0 ),
        .O(\FSM_onehot_current_state[0]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'h4447)) 
    \FSM_onehot_current_state[0]_i_4 
       (.I0(START),
        .I1(\FSM_onehot_current_state_reg_n_0_[2] ),
        .I2(\FSM_onehot_current_state_reg[0]_0 ),
        .I3(started_ok),
        .O(\FSM_onehot_current_state[0]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT3 #(
    .INIT(8'h01)) 
    \FSM_onehot_current_state[0]_i_5 
       (.I0(clk_counter_reg[1]),
        .I1(clk_counter_reg[0]),
        .I2(SCLK),
        .O(clk_en__1));
  LUT2 #(
    .INIT(4'h1)) 
    \FSM_onehot_current_state[0]_i_6 
       (.I0(\FSM_onehot_current_state_reg[0]_0 ),
        .I1(\FSM_onehot_current_state_reg_n_0_[2] ),
        .O(\FSM_onehot_current_state[0]_i_6_n_0 ));
  LUT4 #(
    .INIT(16'h8000)) 
    \FSM_onehot_current_state[0]_i_7 
       (.I0(shiftCounter_reg[3]),
        .I1(shiftCounter_reg[2]),
        .I2(shiftCounter_reg[0]),
        .I3(shiftCounter_reg[1]),
        .O(\FSM_onehot_current_state[0]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h0000FE02AAAAAAAA)) 
    \FSM_onehot_current_state[1]_i_1 
       (.I0(started_ok),
        .I1(\FSM_onehot_current_state[0]_i_2_n_0 ),
        .I2(\FSM_onehot_current_state_reg[0]_i_3_n_0 ),
        .I3(\FSM_onehot_current_state_reg[0]_0 ),
        .I4(RST),
        .I5(clk_en__1),
        .O(\FSM_onehot_current_state[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000FE02AAAAAAAA)) 
    \FSM_onehot_current_state[2]_i_1 
       (.I0(\FSM_onehot_current_state_reg_n_0_[2] ),
        .I1(\FSM_onehot_current_state[0]_i_2_n_0 ),
        .I2(\FSM_onehot_current_state_reg[0]_i_3_n_0 ),
        .I3(started_ok),
        .I4(RST),
        .I5(clk_en__1),
        .O(\FSM_onehot_current_state[2]_i_1_n_0 ));
  (* FSM_ENCODED_STATES = "shiftin:0010,syncdata:0100,idle:0001,iSTATE:1000" *) 
  FDRE #(
    .INIT(1'b1)) 
    \FSM_onehot_current_state_reg[0] 
       (.C(CLK),
        .CE(1'b1),
        .D(\FSM_onehot_current_state[0]_i_1_n_0 ),
        .Q(\FSM_onehot_current_state_reg[0]_0 ),
        .R(1'b0));
  MUXF7 \FSM_onehot_current_state_reg[0]_i_3 
       (.I0(\FSM_onehot_current_state[0]_i_6_n_0 ),
        .I1(\FSM_onehot_current_state[0]_i_7_n_0 ),
        .O(\FSM_onehot_current_state_reg[0]_i_3_n_0 ),
        .S(started_ok));
  (* FSM_ENCODED_STATES = "shiftin:0010,syncdata:0100,idle:0001,iSTATE:1000" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_current_state_reg[1] 
       (.C(CLK),
        .CE(1'b1),
        .D(\FSM_onehot_current_state[1]_i_1_n_0 ),
        .Q(started_ok),
        .R(1'b0));
  (* FSM_ENCODED_STATES = "shiftin:0010,syncdata:0100,idle:0001,iSTATE:1000" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_current_state_reg[2] 
       (.C(CLK),
        .CE(1'b1),
        .D(\FSM_onehot_current_state[2]_i_1_n_0 ),
        .Q(\FSM_onehot_current_state_reg_n_0_[2] ),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \clk_counter[0]_i_1 
       (.I0(clk_counter_reg[0]),
        .O(plusOp[0]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \clk_counter[1]_i_1 
       (.I0(clk_counter_reg[0]),
        .I1(clk_counter_reg[1]),
        .O(plusOp[1]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \clk_counter[2]_i_1 
       (.I0(clk_counter_reg[0]),
        .I1(clk_counter_reg[1]),
        .I2(SCLK),
        .O(plusOp[2]));
  FDCE \clk_counter_reg[0] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(RST),
        .D(plusOp[0]),
        .Q(clk_counter_reg[0]));
  FDCE \clk_counter_reg[1] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(RST),
        .D(plusOp[1]),
        .Q(clk_counter_reg[1]));
  FDCE \clk_counter_reg[2] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(RST),
        .D(plusOp[2]),
        .Q(SCLK));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT2 #(
    .INIT(4'hB)) 
    nCS_INST_0
       (.I0(\FSM_onehot_current_state_reg[0]_0 ),
        .I1(started_ok),
        .O(nCS));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \shiftCounter[0]_i_1 
       (.I0(shiftCounter_reg[0]),
        .O(plusOp__0[0]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \shiftCounter[1]_i_1 
       (.I0(shiftCounter_reg[0]),
        .I1(shiftCounter_reg[1]),
        .O(plusOp__0[1]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \shiftCounter[2]_i_1 
       (.I0(shiftCounter_reg[0]),
        .I1(shiftCounter_reg[1]),
        .I2(shiftCounter_reg[2]),
        .O(\shiftCounter[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \shiftCounter[3]_i_1 
       (.I0(shiftCounter_reg[1]),
        .I1(shiftCounter_reg[0]),
        .I2(shiftCounter_reg[2]),
        .I3(shiftCounter_reg[3]),
        .O(plusOp__0[3]));
  FDRE #(
    .INIT(1'b0)) 
    \shiftCounter_reg[0] 
       (.C(CLK),
        .CE(temp),
        .D(plusOp__0[0]),
        .Q(shiftCounter_reg[0]),
        .R(shiftCounter));
  FDRE #(
    .INIT(1'b0)) 
    \shiftCounter_reg[1] 
       (.C(CLK),
        .CE(temp),
        .D(plusOp__0[1]),
        .Q(shiftCounter_reg[1]),
        .R(shiftCounter));
  FDRE #(
    .INIT(1'b0)) 
    \shiftCounter_reg[2] 
       (.C(CLK),
        .CE(temp),
        .D(\shiftCounter[2]_i_1_n_0 ),
        .Q(shiftCounter_reg[2]),
        .R(shiftCounter));
  FDRE #(
    .INIT(1'b0)) 
    \shiftCounter_reg[3] 
       (.C(CLK),
        .CE(temp),
        .D(plusOp__0[3]),
        .Q(shiftCounter_reg[3]),
        .R(shiftCounter));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'h88DC)) 
    synch_START_i_1
       (.I0(RST),
        .I1(synch_START),
        .I2(START),
        .I3(started_ok),
        .O(synch_START_i_1_n_0));
  FDRE synch_START_reg
       (.C(CLK),
        .CE(1'b1),
        .D(synch_START_i_1_n_0),
        .Q(synch_START),
        .R(1'b0));
  LUT4 #(
    .INIT(16'h0100)) 
    \temp[11]_i_1 
       (.I0(SCLK),
        .I1(clk_counter_reg[0]),
        .I2(clk_counter_reg[1]),
        .I3(started_ok),
        .O(temp));
  FDRE \temp_reg[0] 
       (.C(CLK),
        .CE(temp),
        .D(SDATA),
        .Q(\temp_reg_n_0_[0] ),
        .R(1'b0));
  FDRE \temp_reg[10] 
       (.C(CLK),
        .CE(temp),
        .D(\temp_reg_n_0_[9] ),
        .Q(\temp_reg_n_0_[10] ),
        .R(1'b0));
  FDRE \temp_reg[11] 
       (.C(CLK),
        .CE(temp),
        .D(\temp_reg_n_0_[10] ),
        .Q(\temp_reg_n_0_[11] ),
        .R(1'b0));
  FDRE \temp_reg[1] 
       (.C(CLK),
        .CE(temp),
        .D(\temp_reg_n_0_[0] ),
        .Q(\temp_reg_n_0_[1] ),
        .R(1'b0));
  FDRE \temp_reg[2] 
       (.C(CLK),
        .CE(temp),
        .D(\temp_reg_n_0_[1] ),
        .Q(\temp_reg_n_0_[2] ),
        .R(1'b0));
  FDRE \temp_reg[3] 
       (.C(CLK),
        .CE(temp),
        .D(\temp_reg_n_0_[2] ),
        .Q(\temp_reg_n_0_[3] ),
        .R(1'b0));
  FDRE \temp_reg[4] 
       (.C(CLK),
        .CE(temp),
        .D(\temp_reg_n_0_[3] ),
        .Q(\temp_reg_n_0_[4] ),
        .R(1'b0));
  FDRE \temp_reg[5] 
       (.C(CLK),
        .CE(temp),
        .D(\temp_reg_n_0_[4] ),
        .Q(\temp_reg_n_0_[5] ),
        .R(1'b0));
  FDRE \temp_reg[6] 
       (.C(CLK),
        .CE(temp),
        .D(\temp_reg_n_0_[5] ),
        .Q(\temp_reg_n_0_[6] ),
        .R(1'b0));
  FDRE \temp_reg[7] 
       (.C(CLK),
        .CE(temp),
        .D(\temp_reg_n_0_[6] ),
        .Q(\temp_reg_n_0_[7] ),
        .R(1'b0));
  FDRE \temp_reg[8] 
       (.C(CLK),
        .CE(temp),
        .D(\temp_reg_n_0_[7] ),
        .Q(\temp_reg_n_0_[8] ),
        .R(1'b0));
  FDRE \temp_reg[9] 
       (.C(CLK),
        .CE(temp),
        .D(\temp_reg_n_0_[8] ),
        .Q(\temp_reg_n_0_[9] ),
        .R(1'b0));
endmodule

(* CHECK_LICENSE_TYPE = "TP2_audioFIR_PmodMICRefComp_0_0,PmodMICRefComp,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* ip_definition_source = "package_project" *) 
(* x_core_info = "PmodMICRefComp,Vivado 2021.2" *) 
(* NotValidForBitStream *)
module TP2_audioFIR_PmodMICRefComp_0_0
   (CLK,
    RST,
    SDATA,
    SCLK,
    nCS,
    DATA,
    START,
    DONE);
  (* x_interface_info = "xilinx.com:signal:clock:1.0 CLK CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME CLK, ASSOCIATED_RESET RST:rst:DATA:DONE:nCS:SCLK:SDATA:START, FREQ_HZ 50000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN /clk_100M_50M_clk_out1, INSERT_VIP 0" *) input CLK;
  (* x_interface_info = "xilinx.com:signal:reset:1.0 rst RST" *) (* x_interface_parameter = "XIL_INTERFACENAME rst, POLARITY ACTIVE_HIGH, INSERT_VIP 0" *) input RST;
  (* x_interface_info = "xilinx.com:signal:data:1.0 SDATA DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME SDATA, LAYERED_METADATA undef" *) input SDATA;
  (* x_interface_info = "xilinx.com:signal:data:1.0 SCLK DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME SCLK, LAYERED_METADATA undef" *) output SCLK;
  (* x_interface_info = "xilinx.com:signal:data:1.0 nCS DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME nCS, LAYERED_METADATA undef" *) output nCS;
  (* x_interface_info = "xilinx.com:signal:data:1.0 DATA DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME DATA, LAYERED_METADATA undef" *) output [11:0]DATA;
  (* x_interface_info = "xilinx.com:signal:data:1.0 START DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME START, LAYERED_METADATA undef" *) input START;
  (* x_interface_info = "xilinx.com:signal:data:1.0 DONE DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME DONE, LAYERED_METADATA undef" *) output DONE;

  wire CLK;
  wire [11:0]DATA;
  wire DONE;
  wire RST;
  wire SCLK;
  wire SDATA;
  wire START;
  wire nCS;

  TP2_audioFIR_PmodMICRefComp_0_0_PmodMICRefComp U0
       (.CLK(CLK),
        .DATA(DATA),
        .\FSM_onehot_current_state_reg[0]_0 (DONE),
        .RST(RST),
        .SCLK(SCLK),
        .SDATA(SDATA),
        .START(START),
        .nCS(nCS));
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
