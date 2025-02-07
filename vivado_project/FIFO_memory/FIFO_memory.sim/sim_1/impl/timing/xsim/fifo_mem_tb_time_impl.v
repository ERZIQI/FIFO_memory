// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2024.1 (win64) Build 5076996 Wed May 22 18:37:14 MDT 2024
// Date        : Fri Feb  7 18:23:25 2025
// Host        : ERZIQI running 64-bit major release  (build 9200)
// Command     : write_verilog -mode timesim -nolib -sdf_anno true -force -file
//               D:/Work_Space/SOC/FIFO_memory/vivado_project/FIFO_memory/FIFO_memory.sim/sim_1/impl/timing/xsim/fifo_mem_tb_time_impl.v
// Design      : fifo_mem
// Purpose     : This verilog netlist is a timing simulation representation of the design and should not be modified or
//               synthesized. Please ensure that this netlist is used with the corresponding SDF file.
// Device      : xc7z020clg484-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps
`define XIL_TIMING

module RAM32M_UNIQ_BASE_
   (DOA,
    DOB,
    DOC,
    DOD,
    ADDRA,
    ADDRB,
    ADDRC,
    ADDRD,
    DIA,
    DIB,
    DIC,
    DID,
    WCLK,
    WE);
  output [1:0]DOA;
  output [1:0]DOB;
  output [1:0]DOC;
  output [1:0]DOD;
  input [4:0]ADDRA;
  input [4:0]ADDRB;
  input [4:0]ADDRC;
  input [4:0]ADDRD;
  input [1:0]DIA;
  input [1:0]DIB;
  input [1:0]DIC;
  input [1:0]DID;
  input WCLK;
  input WE;

  wire ADDRA0;
  wire ADDRA1;
  wire ADDRA2;
  wire ADDRA3;
  wire ADDRA4;
  wire ADDRB0;
  wire ADDRB1;
  wire ADDRB2;
  wire ADDRB3;
  wire ADDRB4;
  wire ADDRC0;
  wire ADDRC1;
  wire ADDRC2;
  wire ADDRC3;
  wire ADDRC4;
  wire ADDRD0;
  wire ADDRD1;
  wire ADDRD2;
  wire ADDRD3;
  wire ADDRD4;
  wire DIA0;
  wire DIA1;
  wire DIB0;
  wire DIB1;
  wire DIC0;
  wire DIC1;
  wire DID0;
  wire DID1;
  wire DOA0;
  wire DOA1;
  wire DOB0;
  wire DOB1;
  wire DOC0;
  wire DOC1;
  wire DOD0;
  wire DOD1;
  wire WCLK;
  wire WE;

  assign ADDRA0 = ADDRA[0];
  assign ADDRA1 = ADDRA[1];
  assign ADDRA2 = ADDRA[2];
  assign ADDRA3 = ADDRA[3];
  assign ADDRA4 = ADDRA[4];
  assign ADDRB0 = ADDRB[0];
  assign ADDRB1 = ADDRB[1];
  assign ADDRB2 = ADDRB[2];
  assign ADDRB3 = ADDRB[3];
  assign ADDRB4 = ADDRB[4];
  assign ADDRC0 = ADDRC[0];
  assign ADDRC1 = ADDRC[1];
  assign ADDRC2 = ADDRC[2];
  assign ADDRC3 = ADDRC[3];
  assign ADDRC4 = ADDRC[4];
  assign ADDRD0 = ADDRD[0];
  assign ADDRD1 = ADDRD[1];
  assign ADDRD2 = ADDRD[2];
  assign ADDRD3 = ADDRD[3];
  assign ADDRD4 = ADDRD[4];
  assign DIA0 = DIA[0];
  assign DIA1 = DIA[1];
  assign DIB0 = DIB[0];
  assign DIB1 = DIB[1];
  assign DIC0 = DIC[0];
  assign DIC1 = DIC[1];
  assign DID0 = DID[0];
  assign DID1 = DID[1];
  assign DOA[1] = DOA1;
  assign DOA[0] = DOA0;
  assign DOB[1] = DOB1;
  assign DOB[0] = DOB0;
  assign DOC[1] = DOC1;
  assign DOC[0] = DOC0;
  assign DOD[1] = DOD1;
  assign DOD[0] = DOD0;
  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMA
       (.CLK(WCLK),
        .I(DIA0),
        .O(DOA0),
        .RADR0(ADDRA0),
        .RADR1(ADDRA1),
        .RADR2(ADDRA2),
        .RADR3(ADDRA3),
        .RADR4(ADDRA4),
        .WADR0(ADDRD0),
        .WADR1(ADDRD1),
        .WADR2(ADDRD2),
        .WADR3(ADDRD3),
        .WADR4(ADDRD4),
        .WE(WE));
  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMA_D1
       (.CLK(WCLK),
        .I(DIA1),
        .O(DOA1),
        .RADR0(ADDRA0),
        .RADR1(ADDRA1),
        .RADR2(ADDRA2),
        .RADR3(ADDRA3),
        .RADR4(ADDRA4),
        .WADR0(ADDRD0),
        .WADR1(ADDRD1),
        .WADR2(ADDRD2),
        .WADR3(ADDRD3),
        .WADR4(ADDRD4),
        .WE(WE));
  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMB
       (.CLK(WCLK),
        .I(DIB0),
        .O(DOB0),
        .RADR0(ADDRB0),
        .RADR1(ADDRB1),
        .RADR2(ADDRB2),
        .RADR3(ADDRB3),
        .RADR4(ADDRB4),
        .WADR0(ADDRD0),
        .WADR1(ADDRD1),
        .WADR2(ADDRD2),
        .WADR3(ADDRD3),
        .WADR4(ADDRD4),
        .WE(WE));
  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMB_D1
       (.CLK(WCLK),
        .I(DIB1),
        .O(DOB1),
        .RADR0(ADDRB0),
        .RADR1(ADDRB1),
        .RADR2(ADDRB2),
        .RADR3(ADDRB3),
        .RADR4(ADDRB4),
        .WADR0(ADDRD0),
        .WADR1(ADDRD1),
        .WADR2(ADDRD2),
        .WADR3(ADDRD3),
        .WADR4(ADDRD4),
        .WE(WE));
  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMC
       (.CLK(WCLK),
        .I(DIC0),
        .O(DOC0),
        .RADR0(ADDRC0),
        .RADR1(ADDRC1),
        .RADR2(ADDRC2),
        .RADR3(ADDRC3),
        .RADR4(ADDRC4),
        .WADR0(ADDRD0),
        .WADR1(ADDRD1),
        .WADR2(ADDRD2),
        .WADR3(ADDRD3),
        .WADR4(ADDRD4),
        .WE(WE));
  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMC_D1
       (.CLK(WCLK),
        .I(DIC1),
        .O(DOC1),
        .RADR0(ADDRC0),
        .RADR1(ADDRC1),
        .RADR2(ADDRC2),
        .RADR3(ADDRC3),
        .RADR4(ADDRC4),
        .WADR0(ADDRD0),
        .WADR1(ADDRD1),
        .WADR2(ADDRD2),
        .WADR3(ADDRD3),
        .WADR4(ADDRD4),
        .WE(WE));
  RAMS32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMD
       (.ADR0(ADDRD0),
        .ADR1(ADDRD1),
        .ADR2(ADDRD2),
        .ADR3(ADDRD3),
        .ADR4(ADDRD4),
        .CLK(WCLK),
        .I(DID0),
        .O(DOD0),
        .WE(WE));
  RAMS32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMD_D1
       (.ADR0(ADDRD0),
        .ADR1(ADDRD1),
        .ADR2(ADDRD2),
        .ADR3(ADDRD3),
        .ADR4(ADDRD4),
        .CLK(WCLK),
        .I(DID1),
        .O(DOD1),
        .WE(WE));
endmodule

module RAM32X1D_UNIQ_BASE_
   (DPO,
    SPO,
    A0,
    A1,
    A2,
    A3,
    A4,
    D,
    DPRA0,
    DPRA1,
    DPRA2,
    DPRA3,
    DPRA4,
    WCLK,
    WE);
  output DPO;
  output SPO;
  input A0;
  input A1;
  input A2;
  input A3;
  input A4;
  input D;
  input DPRA0;
  input DPRA1;
  input DPRA2;
  input DPRA3;
  input DPRA4;
  input WCLK;
  input WE;

  wire A0;
  wire A1;
  wire A2;
  wire A3;
  wire A4;
  wire D;
  wire DPO;
  wire DPRA0;
  wire DPRA1;
  wire DPRA2;
  wire DPRA3;
  wire DPRA4;
  wire SPO;
  wire WCLK;
  wire WE;

  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    DP
       (.CLK(WCLK),
        .I(D),
        .O(DPO),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WE(WE));
  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    SP
       (.CLK(WCLK),
        .I(D),
        .O(SPO),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WE(WE));
endmodule

module RAM32X1D_HD2
   (DPO,
    SPO,
    A0,
    A1,
    A2,
    A3,
    A4,
    D,
    DPRA0,
    DPRA1,
    DPRA2,
    DPRA3,
    DPRA4,
    WCLK,
    WE);
  output DPO;
  output SPO;
  input A0;
  input A1;
  input A2;
  input A3;
  input A4;
  input D;
  input DPRA0;
  input DPRA1;
  input DPRA2;
  input DPRA3;
  input DPRA4;
  input WCLK;
  input WE;

  wire A0;
  wire A1;
  wire A2;
  wire A3;
  wire A4;
  wire D;
  wire DPO;
  wire DPRA0;
  wire DPRA1;
  wire DPRA2;
  wire DPRA3;
  wire DPRA4;
  wire SPO;
  wire WCLK;
  wire WE;

  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    DP
       (.CLK(WCLK),
        .I(D),
        .O(DPO),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WE(WE));
  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    SP
       (.CLK(WCLK),
        .I(D),
        .O(SPO),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WE(WE));
endmodule

(* ECO_CHECKSUM = "b38dda2e" *) 
(* NotValidForBitStream *)
(* \DesignAttr:ENABLE_NOC_NETLIST_VIEW  *) 
(* \DesignAttr:ENABLE_AIE_NETLIST_VIEW  *) 
module fifo_mem
   (wr,
    rd,
    clk,
    rst_n,
    data_in,
    data_out,
    fifo_full,
    fifo_empty,
    fifo_threshold,
    fifo_overflow,
    fifo_underflow);
  input wr;
  input rd;
  input clk;
  input rst_n;
  input [7:0]data_in;
  output [7:0]data_out;
  output fifo_full;
  output fifo_empty;
  output fifo_threshold;
  output fifo_overflow;
  output fifo_underflow;

  wire clk;
  wire clk_IBUF;
  wire clk_IBUF_BUFG;
  wire [7:0]data_in;
  wire [7:0]data_in_IBUF;
  wire [7:0]data_out;
  wire [7:0]data_out_OBUF;
  wire fifo_empty;
  wire fifo_empty_OBUF;
  wire fifo_full;
  wire fifo_full_OBUF;
  wire fifo_overflow;
  wire fifo_overflow_OBUF;
  wire fifo_overflow_wire0;
  wire fifo_rd;
  wire fifo_threshold;
  wire fifo_threshold_OBUF;
  wire fifo_underflow;
  wire fifo_underflow_OBUF;
  wire fifo_underflow_wire0;
  wire fifo_we;
  wire msb_ptr__0;
  wire r_inst_n_0;
  wire r_inst_n_3;
  wire r_inst_n_4;
  wire r_inst_n_5;
  wire r_inst_n_6;
  wire r_inst_n_7;
  wire r_inst_n_9;
  wire rd;
  wire rd_IBUF;
  wire [4:4]rptr;
  wire rst_n;
  wire rst_n_IBUF;
  wire w_inst_n_2;
  wire w_inst_n_3;
  wire w_inst_n_4;
  wire w_inst_n_5;
  wire w_inst_n_6;
  wire [4:4]wptr;
  wire wr;
  wire wr_IBUF;

initial begin
 $sdf_annotate("fifo_mem_tb_time_impl.sdf",,,,"tool_control");
end
  BUFG clk_IBUF_BUFG_inst
       (.I(clk_IBUF),
        .O(clk_IBUF_BUFG));
  IBUF clk_IBUF_inst
       (.I(clk),
        .O(clk_IBUF));
  IBUF \data_in_IBUF[0]_inst 
       (.I(data_in[0]),
        .O(data_in_IBUF[0]));
  IBUF \data_in_IBUF[1]_inst 
       (.I(data_in[1]),
        .O(data_in_IBUF[1]));
  IBUF \data_in_IBUF[2]_inst 
       (.I(data_in[2]),
        .O(data_in_IBUF[2]));
  IBUF \data_in_IBUF[3]_inst 
       (.I(data_in[3]),
        .O(data_in_IBUF[3]));
  IBUF \data_in_IBUF[4]_inst 
       (.I(data_in[4]),
        .O(data_in_IBUF[4]));
  IBUF \data_in_IBUF[5]_inst 
       (.I(data_in[5]),
        .O(data_in_IBUF[5]));
  IBUF \data_in_IBUF[6]_inst 
       (.I(data_in[6]),
        .O(data_in_IBUF[6]));
  IBUF \data_in_IBUF[7]_inst 
       (.I(data_in[7]),
        .O(data_in_IBUF[7]));
  OBUF \data_out_OBUF[0]_inst 
       (.I(data_out_OBUF[0]),
        .O(data_out[0]));
  OBUF \data_out_OBUF[1]_inst 
       (.I(data_out_OBUF[1]),
        .O(data_out[1]));
  OBUF \data_out_OBUF[2]_inst 
       (.I(data_out_OBUF[2]),
        .O(data_out[2]));
  OBUF \data_out_OBUF[3]_inst 
       (.I(data_out_OBUF[3]),
        .O(data_out[3]));
  OBUF \data_out_OBUF[4]_inst 
       (.I(data_out_OBUF[4]),
        .O(data_out[4]));
  OBUF \data_out_OBUF[5]_inst 
       (.I(data_out_OBUF[5]),
        .O(data_out[5]));
  OBUF \data_out_OBUF[6]_inst 
       (.I(data_out_OBUF[6]),
        .O(data_out[6]));
  OBUF \data_out_OBUF[7]_inst 
       (.I(data_out_OBUF[7]),
        .O(data_out[7]));
  OBUF fifo_empty_OBUF_inst
       (.I(fifo_empty_OBUF),
        .O(fifo_empty));
  OBUF fifo_full_OBUF_inst
       (.I(fifo_full_OBUF),
        .O(fifo_full));
  OBUF fifo_overflow_OBUF_inst
       (.I(fifo_overflow_OBUF),
        .O(fifo_overflow));
  OBUF fifo_threshold_OBUF_inst
       (.I(fifo_threshold_OBUF),
        .O(fifo_threshold));
  OBUF fifo_underflow_OBUF_inst
       (.I(fifo_underflow_OBUF),
        .O(fifo_underflow));
  memory_array m_inst
       (.E(fifo_we),
        .Q({w_inst_n_2,w_inst_n_3,w_inst_n_4,w_inst_n_5}),
        .clk_IBUF_BUFG(clk_IBUF_BUFG),
        .data_in_IBUF(data_in_IBUF),
        .\data_out[1] ({r_inst_n_3,r_inst_n_4,r_inst_n_5,r_inst_n_6}),
        .data_out_OBUF(data_out_OBUF));
  read_pointer r_inst
       (.E(fifo_rd),
        .Q({rptr,r_inst_n_3,r_inst_n_4,r_inst_n_5,r_inst_n_6}),
        .clk_IBUF_BUFG(clk_IBUF_BUFG),
        .fifo_threshold({wptr,w_inst_n_2,w_inst_n_3,w_inst_n_4,w_inst_n_5}),
        .fifo_threshold_OBUF(fifo_threshold_OBUF),
        .fifo_underflow_wire_reg(w_inst_n_6),
        .msb_ptr__0(msb_ptr__0),
        .rd_IBUF(rd_IBUF),
        .\rptr_reg[3]_0 (r_inst_n_0),
        .\rptr_reg[3]_1 (r_inst_n_7),
        .rst_n(r_inst_n_9),
        .rst_n_IBUF(rst_n_IBUF),
        .wr_IBUF(wr_IBUF));
  IBUF rd_IBUF_inst
       (.I(rd),
        .O(rd_IBUF));
  IBUF rst_n_IBUF_inst
       (.I(rst_n),
        .O(rst_n_IBUF));
  memory_status s_inst
       (.clk_IBUF_BUFG(clk_IBUF_BUFG),
        .fifo_overflow_OBUF(fifo_overflow_OBUF),
        .fifo_overflow_wire0(fifo_overflow_wire0),
        .fifo_overflow_wire_reg_0(r_inst_n_7),
        .fifo_overflow_wire_reg_1(r_inst_n_9),
        .fifo_underflow_OBUF(fifo_underflow_OBUF),
        .fifo_underflow_wire0(fifo_underflow_wire0),
        .fifo_underflow_wire_reg_0(r_inst_n_0));
  write_pointer w_inst
       (.E(fifo_we),
        .Q({wptr,w_inst_n_2,w_inst_n_3,w_inst_n_4,w_inst_n_5}),
        .clk_IBUF_BUFG(clk_IBUF_BUFG),
        .fifo_empty_OBUF(fifo_empty_OBUF),
        .fifo_full_OBUF(fifo_full_OBUF),
        .fifo_overflow_wire0(fifo_overflow_wire0),
        .fifo_underflow_wire0(fifo_underflow_wire0),
        .msb_ptr__0(msb_ptr__0),
        .rd_IBUF(rd_IBUF),
        .\wptr_reg[0]_0 (w_inst_n_6),
        .\wptr_reg[0]_1 ({rptr,r_inst_n_3,r_inst_n_4,r_inst_n_5,r_inst_n_6}),
        .\wptr_reg[3]_0 (fifo_rd),
        .\wptr_reg[4]_0 (r_inst_n_9),
        .wr_IBUF(wr_IBUF));
  IBUF wr_IBUF_inst
       (.I(wr),
        .O(wr_IBUF));
endmodule

module memory_array
   (data_out_OBUF,
    clk_IBUF_BUFG,
    data_in_IBUF,
    E,
    Q,
    \data_out[1] );
  output [7:0]data_out_OBUF;
  input clk_IBUF_BUFG;
  input [7:0]data_in_IBUF;
  input [0:0]E;
  input [3:0]Q;
  input [3:0]\data_out[1] ;

  wire [0:0]E;
  wire [3:0]Q;
  wire clk_IBUF_BUFG;
  wire [7:0]data_in_IBUF;
  wire [3:0]\data_out[1] ;
  wire [7:0]data_out_OBUF;
  wire [1:0]NLW_data_array_reg_0_15_0_5_DOD_UNCONNECTED;
  wire NLW_data_array_reg_0_15_6_7_SPO_UNCONNECTED;
  wire NLW_data_array_reg_0_15_6_7__0_SPO_UNCONNECTED;

  (* INIT_A = "64'h0000000000000000" *) 
  (* INIT_B = "64'h0000000000000000" *) 
  (* INIT_C = "64'h0000000000000000" *) 
  (* INIT_D = "64'h0000000000000000" *) 
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "128" *) 
  (* RTL_RAM_NAME = "m_inst/data_array_reg_0_15_0_5" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "15" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "0" *) 
  (* ram_slice_end = "5" *) 
  RAM32M_UNIQ_BASE_ data_array_reg_0_15_0_5
       (.ADDRA({1'b0,\data_out[1] }),
        .ADDRB({1'b0,\data_out[1] }),
        .ADDRC({1'b0,\data_out[1] }),
        .ADDRD({1'b0,Q}),
        .DIA(data_in_IBUF[1:0]),
        .DIB(data_in_IBUF[3:2]),
        .DIC(data_in_IBUF[5:4]),
        .DID({1'b0,1'b0}),
        .DOA(data_out_OBUF[1:0]),
        .DOB(data_out_OBUF[3:2]),
        .DOC(data_out_OBUF[5:4]),
        .DOD(NLW_data_array_reg_0_15_0_5_DOD_UNCONNECTED[1:0]),
        .WCLK(clk_IBUF_BUFG),
        .WE(E));
  (* INIT = "32'h00000000" *) 
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "128" *) 
  (* RTL_RAM_NAME = "m_inst/data_array_reg_0_15_6_7" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "15" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "6" *) 
  (* ram_slice_end = "7" *) 
  RAM32X1D_UNIQ_BASE_ data_array_reg_0_15_6_7
       (.A0(Q[0]),
        .A1(Q[1]),
        .A2(Q[2]),
        .A3(Q[3]),
        .A4(1'b0),
        .D(data_in_IBUF[6]),
        .DPO(data_out_OBUF[6]),
        .DPRA0(\data_out[1] [0]),
        .DPRA1(\data_out[1] [1]),
        .DPRA2(\data_out[1] [2]),
        .DPRA3(\data_out[1] [3]),
        .DPRA4(1'b0),
        .SPO(NLW_data_array_reg_0_15_6_7_SPO_UNCONNECTED),
        .WCLK(clk_IBUF_BUFG),
        .WE(E));
  (* INIT = "32'h00000000" *) 
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "128" *) 
  (* RTL_RAM_NAME = "m_inst/data_array_reg_0_15_6_7" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "15" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "6" *) 
  (* ram_slice_end = "7" *) 
  RAM32X1D_HD2 data_array_reg_0_15_6_7__0
       (.A0(Q[0]),
        .A1(Q[1]),
        .A2(Q[2]),
        .A3(Q[3]),
        .A4(1'b0),
        .D(data_in_IBUF[7]),
        .DPO(data_out_OBUF[7]),
        .DPRA0(\data_out[1] [0]),
        .DPRA1(\data_out[1] [1]),
        .DPRA2(\data_out[1] [2]),
        .DPRA3(\data_out[1] [3]),
        .DPRA4(1'b0),
        .SPO(NLW_data_array_reg_0_15_6_7__0_SPO_UNCONNECTED),
        .WCLK(clk_IBUF_BUFG),
        .WE(E));
endmodule

module memory_status
   (fifo_overflow_OBUF,
    fifo_underflow_OBUF,
    fifo_overflow_wire_reg_0,
    fifo_overflow_wire0,
    clk_IBUF_BUFG,
    fifo_overflow_wire_reg_1,
    fifo_underflow_wire_reg_0,
    fifo_underflow_wire0);
  output fifo_overflow_OBUF;
  output fifo_underflow_OBUF;
  input fifo_overflow_wire_reg_0;
  input fifo_overflow_wire0;
  input clk_IBUF_BUFG;
  input fifo_overflow_wire_reg_1;
  input fifo_underflow_wire_reg_0;
  input fifo_underflow_wire0;

  wire clk_IBUF_BUFG;
  wire fifo_overflow_OBUF;
  wire fifo_overflow_wire0;
  wire fifo_overflow_wire_reg_0;
  wire fifo_overflow_wire_reg_1;
  wire fifo_underflow_OBUF;
  wire fifo_underflow_wire0;
  wire fifo_underflow_wire_reg_0;

  FDCE #(
    .INIT(1'b0)) 
    fifo_overflow_wire_reg
       (.C(clk_IBUF_BUFG),
        .CE(fifo_overflow_wire_reg_0),
        .CLR(fifo_overflow_wire_reg_1),
        .D(fifo_overflow_wire0),
        .Q(fifo_overflow_OBUF));
  FDCE #(
    .INIT(1'b0)) 
    fifo_underflow_wire_reg
       (.C(clk_IBUF_BUFG),
        .CE(fifo_underflow_wire_reg_0),
        .CLR(fifo_overflow_wire_reg_1),
        .D(fifo_underflow_wire0),
        .Q(fifo_underflow_OBUF));
endmodule

module read_pointer
   (\rptr_reg[3]_0 ,
    msb_ptr__0,
    Q,
    \rptr_reg[3]_1 ,
    fifo_threshold_OBUF,
    rst_n,
    rd_IBUF,
    fifo_underflow_wire_reg,
    fifo_threshold,
    wr_IBUF,
    rst_n_IBUF,
    E,
    clk_IBUF_BUFG);
  output \rptr_reg[3]_0 ;
  output msb_ptr__0;
  output [4:0]Q;
  output \rptr_reg[3]_1 ;
  output fifo_threshold_OBUF;
  output rst_n;
  input rd_IBUF;
  input fifo_underflow_wire_reg;
  input [4:0]fifo_threshold;
  input wr_IBUF;
  input rst_n_IBUF;
  input [0:0]E;
  input clk_IBUF_BUFG;

  wire [0:0]E;
  wire [4:0]Q;
  wire clk_IBUF_BUFG;
  wire [4:0]fifo_threshold;
  wire fifo_threshold_OBUF;
  wire fifo_threshold_OBUF_inst_i_2_n_0;
  wire fifo_underflow_wire_reg;
  wire msb_ptr__0;
  wire [4:1]p_0_in__0;
  wire rd_IBUF;
  wire \rptr[0]_i_1_n_0 ;
  wire \rptr_reg[3]_0 ;
  wire \rptr_reg[3]_1 ;
  wire rst_n;
  wire rst_n_IBUF;
  wire wr_IBUF;

  LUT6 #(
    .INIT(64'hBFFFFFBF80000080)) 
    fifo_overflow_wire_i_1
       (.I0(wr_IBUF),
        .I1(msb_ptr__0),
        .I2(fifo_underflow_wire_reg),
        .I3(Q[3]),
        .I4(fifo_threshold[3]),
        .I5(rd_IBUF),
        .O(\rptr_reg[3]_1 ));
  LUT1 #(
    .INIT(2'h1)) 
    fifo_overflow_wire_i_3
       (.I0(rst_n_IBUF),
        .O(rst_n));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT2 #(
    .INIT(4'h6)) 
    fifo_overflow_wire_i_4
       (.I0(Q[4]),
        .I1(fifo_threshold[4]),
        .O(msb_ptr__0));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h6FF6F96F)) 
    fifo_threshold_OBUF_inst_i_1
       (.I0(fifo_threshold[4]),
        .I1(Q[4]),
        .I2(fifo_threshold[3]),
        .I3(Q[3]),
        .I4(fifo_threshold_OBUF_inst_i_2_n_0),
        .O(fifo_threshold_OBUF));
  LUT6 #(
    .INIT(64'hD4DD4444DDDDD4DD)) 
    fifo_threshold_OBUF_inst_i_2
       (.I0(Q[2]),
        .I1(fifo_threshold[2]),
        .I2(fifo_threshold[0]),
        .I3(Q[0]),
        .I4(fifo_threshold[1]),
        .I5(Q[1]),
        .O(fifo_threshold_OBUF_inst_i_2_n_0));
  LUT6 #(
    .INIT(64'h3FFFFF3F20000020)) 
    fifo_underflow_wire_i_1
       (.I0(rd_IBUF),
        .I1(msb_ptr__0),
        .I2(fifo_underflow_wire_reg),
        .I3(Q[3]),
        .I4(fifo_threshold[3]),
        .I5(wr_IBUF),
        .O(\rptr_reg[3]_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \rptr[0]_i_1 
       (.I0(Q[0]),
        .O(\rptr[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \rptr[1]_i_1 
       (.I0(Q[0]),
        .I1(Q[1]),
        .O(p_0_in__0[1]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \rptr[2]_i_1 
       (.I0(Q[0]),
        .I1(Q[1]),
        .I2(Q[2]),
        .O(p_0_in__0[2]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \rptr[3]_i_1 
       (.I0(Q[1]),
        .I1(Q[0]),
        .I2(Q[2]),
        .I3(Q[3]),
        .O(p_0_in__0[3]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \rptr[4]_i_2 
       (.I0(Q[2]),
        .I1(Q[0]),
        .I2(Q[1]),
        .I3(Q[3]),
        .I4(Q[4]),
        .O(p_0_in__0[4]));
  FDCE #(
    .INIT(1'b0)) 
    \rptr_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .CLR(rst_n),
        .D(\rptr[0]_i_1_n_0 ),
        .Q(Q[0]));
  FDCE #(
    .INIT(1'b0)) 
    \rptr_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .CLR(rst_n),
        .D(p_0_in__0[1]),
        .Q(Q[1]));
  FDCE #(
    .INIT(1'b0)) 
    \rptr_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .CLR(rst_n),
        .D(p_0_in__0[2]),
        .Q(Q[2]));
  FDCE #(
    .INIT(1'b0)) 
    \rptr_reg[3] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .CLR(rst_n),
        .D(p_0_in__0[3]),
        .Q(Q[3]));
  FDCE #(
    .INIT(1'b0)) 
    \rptr_reg[4] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .CLR(rst_n),
        .D(p_0_in__0[4]),
        .Q(Q[4]));
endmodule

module write_pointer
   (fifo_underflow_wire0,
    Q,
    \wptr_reg[0]_0 ,
    E,
    \wptr_reg[3]_0 ,
    fifo_empty_OBUF,
    fifo_full_OBUF,
    fifo_overflow_wire0,
    wr_IBUF,
    \wptr_reg[0]_1 ,
    msb_ptr__0,
    rd_IBUF,
    clk_IBUF_BUFG,
    \wptr_reg[4]_0 );
  output fifo_underflow_wire0;
  output [4:0]Q;
  output \wptr_reg[0]_0 ;
  output [0:0]E;
  output [0:0]\wptr_reg[3]_0 ;
  output fifo_empty_OBUF;
  output fifo_full_OBUF;
  output fifo_overflow_wire0;
  input wr_IBUF;
  input [4:0]\wptr_reg[0]_1 ;
  input msb_ptr__0;
  input rd_IBUF;
  input clk_IBUF_BUFG;
  input \wptr_reg[4]_0 ;

  wire [0:0]E;
  wire [4:0]Q;
  wire clk_IBUF_BUFG;
  wire fifo_empty_OBUF;
  wire fifo_full_OBUF;
  wire fifo_overflow_wire0;
  wire fifo_underflow_wire0;
  wire msb_ptr__0;
  wire [4:0]p_0_in;
  wire rd_IBUF;
  wire \wptr_reg[0]_0 ;
  wire [4:0]\wptr_reg[0]_1 ;
  wire [0:0]\wptr_reg[3]_0 ;
  wire \wptr_reg[4]_0 ;
  wire wr_IBUF;

  LUT6 #(
    .INIT(64'hAAAA28AA28AAAAAA)) 
    data_array_reg_0_15_0_5_i_1
       (.I0(wr_IBUF),
        .I1(Q[3]),
        .I2(\wptr_reg[0]_1 [3]),
        .I3(\wptr_reg[0]_0 ),
        .I4(\wptr_reg[0]_1 [4]),
        .I5(Q[4]),
        .O(E));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT5 #(
    .INIT(32'h82000082)) 
    fifo_empty_OBUF_inst_i_1
       (.I0(\wptr_reg[0]_0 ),
        .I1(\wptr_reg[0]_1 [3]),
        .I2(Q[3]),
        .I3(Q[4]),
        .I4(\wptr_reg[0]_1 [4]),
        .O(fifo_empty_OBUF));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT5 #(
    .INIT(32'h60000060)) 
    fifo_full_OBUF_inst_i_1
       (.I0(Q[4]),
        .I1(\wptr_reg[0]_1 [4]),
        .I2(\wptr_reg[0]_0 ),
        .I3(\wptr_reg[0]_1 [3]),
        .I4(Q[3]),
        .O(fifo_full_OBUF));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    fifo_full_OBUF_inst_i_2
       (.I0(Q[0]),
        .I1(\wptr_reg[0]_1 [0]),
        .I2(\wptr_reg[0]_1 [2]),
        .I3(Q[2]),
        .I4(\wptr_reg[0]_1 [1]),
        .I5(Q[1]),
        .O(\wptr_reg[0]_0 ));
  LUT5 #(
    .INIT(32'h90000000)) 
    fifo_overflow_wire_i_2
       (.I0(Q[3]),
        .I1(\wptr_reg[0]_1 [3]),
        .I2(\wptr_reg[0]_0 ),
        .I3(msb_ptr__0),
        .I4(wr_IBUF),
        .O(fifo_overflow_wire0));
  LUT6 #(
    .INIT(64'h0000410000000000)) 
    fifo_underflow_wire_i_2
       (.I0(wr_IBUF),
        .I1(Q[3]),
        .I2(\wptr_reg[0]_1 [3]),
        .I3(\wptr_reg[0]_0 ),
        .I4(msb_ptr__0),
        .I5(rd_IBUF),
        .O(fifo_underflow_wire0));
  LUT6 #(
    .INIT(64'hAAAA28AA28AAAAAA)) 
    \rptr[4]_i_1 
       (.I0(rd_IBUF),
        .I1(Q[3]),
        .I2(\wptr_reg[0]_1 [3]),
        .I3(\wptr_reg[0]_0 ),
        .I4(\wptr_reg[0]_1 [4]),
        .I5(Q[4]),
        .O(\wptr_reg[3]_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \wptr[0]_i_1 
       (.I0(Q[0]),
        .O(p_0_in[0]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \wptr[1]_i_1 
       (.I0(Q[0]),
        .I1(Q[1]),
        .O(p_0_in[1]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \wptr[2]_i_1 
       (.I0(Q[0]),
        .I1(Q[1]),
        .I2(Q[2]),
        .O(p_0_in[2]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \wptr[3]_i_1 
       (.I0(Q[1]),
        .I1(Q[0]),
        .I2(Q[2]),
        .I3(Q[3]),
        .O(p_0_in[3]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \wptr[4]_i_1 
       (.I0(Q[2]),
        .I1(Q[0]),
        .I2(Q[1]),
        .I3(Q[3]),
        .I4(Q[4]),
        .O(p_0_in[4]));
  FDCE #(
    .INIT(1'b0)) 
    \wptr_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .CLR(\wptr_reg[4]_0 ),
        .D(p_0_in[0]),
        .Q(Q[0]));
  FDCE #(
    .INIT(1'b0)) 
    \wptr_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .CLR(\wptr_reg[4]_0 ),
        .D(p_0_in[1]),
        .Q(Q[1]));
  FDCE #(
    .INIT(1'b0)) 
    \wptr_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .CLR(\wptr_reg[4]_0 ),
        .D(p_0_in[2]),
        .Q(Q[2]));
  FDCE #(
    .INIT(1'b0)) 
    \wptr_reg[3] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .CLR(\wptr_reg[4]_0 ),
        .D(p_0_in[3]),
        .Q(Q[3]));
  FDCE #(
    .INIT(1'b0)) 
    \wptr_reg[4] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .CLR(\wptr_reg[4]_0 ),
        .D(p_0_in[4]),
        .Q(Q[4]));
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
