///////////////////////////////////////////////////////////////////////////////
// Copyright (c) 2017 Xilinx, Inc.
// All Rights Reserved
///////////////////////////////////////////////////////////////////////////////
//   ____  ____
//  /   /\/   /
// /___/  \  /    Vendor     : Xilinx
// \   \   \/     Version    : 14.7
//  \   \         Application: Xilinx CORE Generator
//  /   /         Filename   : ila.veo
// /___/   /\     Timestamp  : Wed Mar 29 01:19:31 India Standard Time 2017
// \   \  /  \
//  \___\/\___\
//
// Design Name: ISE Instantiation template
///////////////////////////////////////////////////////////////////////////////

// The following must be inserted into your Verilog file for this
// core to be instantiated. Change the instance name and port connections
// (in parentheses) to your own signal names.

//----------- Begin Cut here for INSTANTIATION Template ---// INST_TAG
ila YourInstanceName (
    .CONTROL(CONTROL), // INOUT BUS [35:0]
    .CLK(CLK), // IN
    .DATA(DATA), // IN BUS [31:0]
    .TRIG0(TRIG0) // IN BUS [7:0]
);

// INST_TAG_END ------ End INSTANTIATION Template ---------
