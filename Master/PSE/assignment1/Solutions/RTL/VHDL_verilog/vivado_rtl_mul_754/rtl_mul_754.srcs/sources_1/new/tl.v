`timescale 1ns / 1ps

// State costants
`define ST_0        0
`define ST_1        1
`define ST_2        2
`define ST_3        3
`define ST_4        4
`define ST_5        5

    
////////////////////////////////////////////////////////////////////////////////
// Mudule tl
module tl(
    input wire [32-1:0] op1,   
    input wire [32-1:0] op2,
    input wire [1:0] inrdy,
    output reg [32-1:0] res,
    output reg [1:0] resrdy,
    input wire clk,
    input wire reset   
    );
    
    // signal
    reg [32-1:0] tmp;

    reg [5:0] state = `ST_0;
    reg [5:0] next_state = `ST_0;

    // Verilog component
    wire [32-1:0] res_verilog;
    wire res_verilog_rdy;

    mul_ieee754_verilog multiplier_verilog(
        .op1(op1),
        .op2(op2),
        .inrdy(inrdy[0]),
        .res(res_verilog),
        .resrdy(res_verilog_rdy),
        .clk(clk),
        .reset(reset)
    );

    // VHDL component
    wire [32-1:0] res_vhdl;
    wire res_vhdl_rdy;

    mul_ieee754_vhdl multiplier_vhdl(
        .op1(op1),
        .op2(op2),
        .inrdy(inrdy[1]),
        .res(res_vhdl),
        .resrdy(res_vhdl_rdy),
        .clk(clk),
        .reset(reset)
    );
    
    ////////////////////////////////////////////////////////////////////////////
    // FSM
    always @(state, res_verilog_rdy, res_vhdl_rdy) 
    begin 
        case (state)
            `ST_0:
            begin
                next_state <= `ST_1;
            end
            `ST_1:
            begin
                if (res_vhdl_rdy == 1'b1 && res_verilog_rdy == 1'b1)
                    next_state <= `ST_4;
                else if (res_vhdl_rdy == 1'b1)
                    next_state <= `ST_2;
                else if (res_verilog_rdy == 1'b1)
                    next_state <= `ST_3;
                else
                    next_state <= `ST_1;
            end
            `ST_2:
            begin
                next_state <= `ST_1;
            end
            `ST_3:
            begin
                next_state <= `ST_1;
            end
            `ST_4:
            begin
                next_state <= `ST_5;
            end
            `ST_5:
            begin
                next_state <= `ST_0;
            end
            default: 
            begin 
                next_state <= `ST_0;
            end
        endcase
    end

    ////////////////////////////////////////////////////////////////////////////
    // DATAPATH
    always @(posedge clk, posedge reset) 
    begin
        state <= next_state;
        if (reset == 1'b1)
            begin
                resrdy  <= 2'b00;
                res     <= 32'd0;
                tmp     <= 32'd0;
            end
        else
            begin
                
                case (next_state)
                    `ST_0: 
                    begin
                        resrdy  <= 2'b00;
                        res     <= 32'd0;
                        tmp     <= 32'd0;
                    end
                    `ST_1:
                    begin
                        // do nothing
                    end
                    `ST_2:
                    begin
                        resrdy <= 2'b01;
                        res <= res_vhdl;
                    end
                    `ST_3:
                    begin
                        resrdy <= 2'b10;
                        res <= res_verilog;
                    end
                    `ST_4:
                    begin
                        resrdy <= 2'b01;
                        res <= res_verilog;
                        tmp <= res_vhdl;
                    end
                    `ST_5:
                    begin
                        resrdy <= 2'b10;
                        res <= tmp;
                    end
                    default: 
                    begin 
                        // nothing
                    end
                endcase
            end
    end
   
endmodule
