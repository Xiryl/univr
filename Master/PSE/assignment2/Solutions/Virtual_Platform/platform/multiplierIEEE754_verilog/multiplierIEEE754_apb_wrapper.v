`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////

// State costants
`define ST_0        0
`define ST_1        1
`define ST_2        2
`define ST_3        3
`define ST_4        4

////////////////////////////////////////////////////////////////////////////////
// Mudule multiplierIEEE745_verilog_apb_wrapper
module multiplierIEEE745_verilog_apb_wrapper(
    input  pclk,
    input  presetn,
    input  paddr,
    input  psel,
    input  penable,
    input  pwrite,
    input  pwdata,
    output pready,
    output prdata
    );

    parameter SIZE = 32;

    // In
    wire pclk, presetn;
    wire [SIZE-1:0] paddr;
    wire psel, penable, pwrite;
    wire [SIZE-1:0] pwdata;

    // Out
    reg pready;
    reg [SIZE-1:0] prdata;

    // Signals
    reg [SIZE-1:0] tmp;

    reg [5:0] NEXT_STATE = `ST_0;

    // Component multiplierIEEE754
    reg [SIZE-1:0] op1, op2;
    reg in_rdy;
    wire [SIZE-1:0] res;
    wire res_rdy;

    multiplierIEEE754_verilog multiplierIEEE754_0(
        .op1(op1),
        .op2(op2),
        .in_rdy(in_rdy),
        .res(res),
        .res_rdy(res_rdy),
        .clk(pclk),
        .rst(presetn)
    );

    ////////////////////////////////////////////////////////////////////////////
    // FSM
    always @(posedge pclk, posedge presetn) 
    begin 
        if (presetn == 1'b1) 
            NEXT_STATE <= `ST_0;
        else begin
            case (NEXT_STATE)
                `ST_0:
                begin
                    if (penable == 1'b1)
                        NEXT_STATE <= `ST_1;
                    else // if (penable == 1'b0)
                        NEXT_STATE <= `ST_0;
                end
                `ST_1:
                begin
                    if (penable == 1'b0)
                        NEXT_STATE <= `ST_2;
                    else // if (penable == 1'b1)
                        NEXT_STATE <= `ST_1;
                end
                `ST_2:
                begin
                    if (penable == 1'b1)
                        NEXT_STATE <= `ST_3;
                    else // if (penable == 1'b0)
                        NEXT_STATE <= `ST_2;
                end
                `ST_3:
                begin
                    if (res_rdy == 1'b1)
                        NEXT_STATE <= `ST_4;
                    else // if (res_rdy == 1'b0)
                        NEXT_STATE <= `ST_3;
                end
                `ST_4:
                begin
                    if (penable == 1'b0)
                        NEXT_STATE <= `ST_0;
                    else // if (penable == 1'b1)
                        NEXT_STATE <= `ST_4;
                end
                default: 
                begin 
                    NEXT_STATE <= `ST_0;
                end
            endcase
        end
    end

    ////////////////////////////////////////////////////////////////////////////
    // DATAPATH
    always @(NEXT_STATE) 
    begin 
        case (NEXT_STATE)
            `ST_0: 
            begin
                pready <= 1'b0;
                prdata <= 0;
                op1 <= 0;
                op2 <= 0;
                in_rdy <= 1'b0;
                tmp <= 0;
            end
            `ST_1:
            begin
                tmp <= pwdata;
            end
            `ST_2:
            begin
                // do nothing
            end
            `ST_3:
            begin
                op1 <= tmp;
                op2 <= pwdata;
                in_rdy <= 1'b1;
            end
            `ST_4:
            begin
                prdata <= res;
                pready <= 1'b1;
            end
            default: 
            begin 
                // do nothings
            end
        endcase
    end
   
endmodule