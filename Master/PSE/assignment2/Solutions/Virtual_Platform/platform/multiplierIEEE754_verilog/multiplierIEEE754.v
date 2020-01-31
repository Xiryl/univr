`timescale 1ns / 1ps
////////////////////////////////////////////////////////////////////////////////

// State costants
`define ST_0        0
`define ST_1        1
`define ST_2        2
`define ST_NAN1     3
`define ST_NAN1_1   4
`define ST_NAN1_2   5
`define ST_NAN2     6
`define ST_INF      7
`define ST_ZERO     8   
`define ST_3        9
`define ST_4        10
`define ST_5        11
`define ST_6        12
`define ST_7        13
`define ST_8        14
`define ST_9        15
`define ST_10       16
`define ST_11       17
`define ST_12       18
`define ST_13       19
`define ST_ROUND    20
`define ST_END      21


////////////////////////////////////////////////////////////////////////////////
// Mudule multiplierIEEE754_verilog
// op1, op2: floating points operands;
// op[31]       -> sign
// op[30:23]    -> exp
// op[22:0]     -> mantissa
// res: floating point result of multiplication;
// in_rdy, out_rdy: handshake protocol; 
module multiplierIEEE754_verilog(
    input op1,
    input op2,
    input in_rdy,
    output res,
    output res_rdy,
    input clk,
    input rst
    );
    
    parameter SIZE              = 32;
    parameter SIZE_OF_MANTISSA  = 23;
    parameter SIZE_OF_EXPONENT  = 8;
    
    // in
    wire [SIZE-1:0] op1, op2;
    wire clk, in_rdy, rst;
    // out
    reg [SIZE-1:0] res;
    reg res_rdy;
    
    // signal
    reg [SIZE_OF_EXPONENT-1:0]  exp, exp1, exp2;
    reg [SIZE_OF_EXPONENT:0]    tmpexp;
    reg [SIZE_OF_MANTISSA-1:0]  m;
    reg [SIZE_OF_MANTISSA:0]    m1;
    reg [SIZE_OF_MANTISSA:0]    m2;
    reg [((SIZE_OF_MANTISSA+1)*2)-1:0]  tmpm;
    reg s, s1, s2;

    reg [5:0] STATE = `ST_0;
    reg [5:0] NEXT_STATE = `ST_0;
    
    ////////////////////////////////////////////////////////////////////////////
    // FSM
    always @(posedge clk, posedge rst) 
    begin 
        if (rst == 1'b1) 
            NEXT_STATE <= `ST_0;
        else begin
            case (STATE)
                `ST_0:
                begin
                    if (in_rdy == 1'b1)
                        NEXT_STATE <= `ST_1;
                    else
                        NEXT_STATE <= `ST_0;
                end
                `ST_1:
                begin
                    if ((exp1 == 8'hFF && m1 != 0)
                        || (exp2 == 8'hFF && m2 != 0))
                    begin 
                        // op1 or op2 are NaN
                        NEXT_STATE <= `ST_NAN1;
                    end
                    else if ((exp1 == 8'hFF && m1 == 0
                        && exp2 == 0 && m2 == 0)
                        || (exp1 == 0 && m1 == 0
                        && exp2 == 8'hFF && m2 == 0))
                    begin 
                        // op1 is inf and op2 is 0 or vice versa
                        NEXT_STATE <= `ST_NAN2;
                    end
                    else if ((exp1 == 8'hFF && m1 == 0)
                        || (exp2 == 8'hFF && m2 == 0))
                    begin 
                        // op1 or op2 are inf
                        NEXT_STATE <= `ST_INF;
                    end
                    else if ((exp1 == 0 && m1 == 0)
                        || (exp2 == 0 && m2 == 0))
                    begin 
                        // op1 or op2 are zero
                        NEXT_STATE <= `ST_ZERO;
                    end
                    else
                    begin 
                        // op1 and op2 are normalized or denormalized number 
                        NEXT_STATE <= `ST_2;
                    end
                end
                `ST_2:
                begin
                    if (exp1 != 0 && exp2 != 0)
                    begin
                        // Both op1 and op2 are denormalized
                        NEXT_STATE <= `ST_3;
                    end
                    else if (exp1 != 0)
                    begin
                        // Only op1 is denormalized
                        NEXT_STATE <= `ST_4;
                    end
                    else if (exp2 != 0)
                    begin
                        // Only op2 is denormalized
                        NEXT_STATE <= `ST_5;
                    end
                    else 
                    begin
                        // Both normalized
                        NEXT_STATE <= `ST_6;
                    end 
                end
                `ST_3:
                begin
                    NEXT_STATE <= `ST_6;
                end
                `ST_4:
                begin
                    NEXT_STATE <= `ST_6;
                end
                `ST_5:
                begin
                    NEXT_STATE <= `ST_6;
                end
                `ST_6:
                begin
                    if (tmpm[47:46] == 2'b10 || tmpm[47:46] == 2'b11)
                    begin
                        // Only one DX shift
                        NEXT_STATE <= `ST_7;
                    end
                    else if (tmpm[47:46] == 2'b00)
                    begin
                        // SX shift
                        NEXT_STATE <= `ST_8;
                    end
                    else // if (tmpm[47:46] == 2'b01)
                    begin
                        // Mantissa already normalized
                        NEXT_STATE <= `ST_10;
                    end
                end
                `ST_7:
                begin
                    NEXT_STATE <= `ST_10;
                end
                `ST_8:
                begin
                    if (tmpm[47:46] == 2'b01 || tmpexp == 0)
                    begin
                        // Mantissa normalized or denormalized
                        NEXT_STATE <= `ST_10;
                    end
                    else // if (tmpm[47:46]) == "00")
                    begin
                        // Still SX shift
                        NEXT_STATE <= `ST_9; 
                    end
                end
                `ST_9:
                begin
                    NEXT_STATE <= `ST_8; 
                end
                `ST_10:
                begin
                    if (tmpexp[8] == 1'b1 && ((exp1 + exp2) < 127))
                    begin
                        // Underflow
                        NEXT_STATE <= `ST_7;
                    end
                    else if (tmpexp[8] == 1'b1 && ((exp1 + exp2) < 127))
                    begin
                        // Overflow
                        NEXT_STATE <= `ST_INF;
                    end
                    else
                    begin
                        // Prepare exponent
                        NEXT_STATE <= `ST_11;
                    end
                end
                `ST_11:
                begin
                    if (tmpm[22] == 1'b1)
                    begin 
                        // Round
                        NEXT_STATE <= `ST_ROUND;
                    end
                    else 
                    begin
                        // Prepare result
                        NEXT_STATE <= `ST_13;
                    end
                end
                `ST_12:
                begin
                    NEXT_STATE <= `ST_10;
                end
                `ST_13:
                begin
                    NEXT_STATE <= `ST_END;
                end
                `ST_ROUND:
                begin
                    if (tmpm[47:46] == 2'b10)
                    begin
                        // Prepare result
                        NEXT_STATE <= `ST_12;
                    end
                    else // if (tmpm(47 downto 46) = '10' || '00')
                    begin
                        NEXT_STATE <= `ST_13;
                    end
                end
                `ST_NAN1:
                begin
                    if (exp1 == 8'hFF && m1 != 0)
                    begin
                        NEXT_STATE <= `ST_NAN1_1;
                    end
                    else // if (exp2.read() == 0xFF && m2.read() != 0)
                    begin
                        NEXT_STATE <= `ST_NAN1_2;
                    end
                end
                `ST_NAN1_1:
                begin
                    NEXT_STATE <= `ST_END;
                end
                `ST_NAN1_2:
                begin
                    NEXT_STATE <= `ST_END;
                end
                `ST_NAN2:
                begin
                    NEXT_STATE <= `ST_END;
                end
                `ST_INF:
                begin
                    NEXT_STATE <= `ST_END;
                end
                `ST_ZERO:
                begin
                    NEXT_STATE <= `ST_END;
                end
                `ST_END:
                begin
                    NEXT_STATE <= `ST_0;
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
        STATE <= NEXT_STATE;
        case (NEXT_STATE)
            `ST_0: 
            begin
                exp     <= 0;
                exp1    <= 0;
                exp2    <= 0;
                tmpexp  <= 0;
                m       <= 0;
                m1      <= 0;
                m2      <= 0;
                tmpm    <= 0;
                s       <= 0;
                s1      <= 0;
                s2      <= 0;

                res     <= 0;
                res_rdy <= 1'b0;
            end
            `ST_1:
            begin
                m1 <= {1'b0, op1[22:0]};
                m2 <= {1'b0, op2[22:0]};

                exp1 <= op1[30:23];
                exp2 <= op2[30:23];

                s1 <= op1[31];
                s2 <= op2[31];

                s <= op1[31] ^ op2[31];
            end
            `ST_2:
            begin
                // do nothing
            end
            `ST_3:
            begin
                m1[23] <= 1'b1;
                m2[23] <= 1'b1;
            end
            `ST_4:
            begin
                m1[23] <= 1'b1;
            end
            `ST_5:
            begin
                m2[23] <= 1'b1;
            end
            `ST_6:
            begin
                tmpexp <= exp1 + exp2 - 8'd127;
                tmpm   <= m1 * m2;
            end
            `ST_7:
            begin
                tmpm   <= tmpm >> 1;
                tmpexp <= tmpexp + 9'd1;
            end
            `ST_8:
            begin
                // do nothing
            end
            `ST_9:
            begin
                tmpm   <= tmpm << 1;
                tmpexp <= tmpexp - 9'd1;
            end
            `ST_10:
            begin
                // do nothing
            end
            `ST_11:
            begin
                exp <= tmpexp[7:0];
            end
            `ST_12:
            begin
                tmpexp <= tmpexp + 1;
            end
            `ST_ROUND:
            begin
                // tmpm[47:22] + 1 
                // tmpm[47:22] in the form
                // 01 | .... from bit 45 to 23 .... | 1
                tmpm[47:22] <= tmpm[47:22] + 26'd1;
            end
            `ST_13:
            begin
                m <= tmpm[45:23];
            end
            `ST_NAN1:
            begin
                // do nothing
            end
            `ST_NAN2:
            begin
                exp <= 8'hFF;
                m   <= {1'b1, 22'b0};
                s   <= 1'b1;
            end
            `ST_NAN1_1:
            begin
                exp <= 8'hFF;
                m   <= {1'b1, m1[21:0]};
                s   <= s1;
            end
            `ST_NAN1_2:
            begin
                exp <= 8'hFF;
                m   <= {1'b1, m2[21:0]};
                s   <= s2;
            end
            `ST_INF:
            begin
                exp <= 8'hFF;
                m   <= 23'd0;
            end
            `ST_ZERO:
            begin
                exp <= 8'h00;
                m   <= 23'd0;
            end
            `ST_END:
            begin
                res_rdy <= 1'b1;
                res[31] <= s;
                res[30:23] <= exp;
                res[22:0]  <= m;
            end
            default: 
            begin 
                // do nothings
            end
        endcase
    end
   
endmodule
