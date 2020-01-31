`timescale 1ns / 1ps
////////////////////////////////////////////////////////////////////////////////
// 
// Module Name: multiplexer - arch_multiplexer
// Project Name: IEE 754 MULTIPLEXER
// Author: Fabio Chiarani
// 
////////////////////////////////////////////////////////////////////////////////

/////////////////////////
// states definitions  //
/////////////////////////

`define ST_0       0
`define ST_1       1
`define ST_2       2
`define ST_ZERO    3
`define ST_INF     4
`define ST_NAN     5
`define ST_6       6
`define ST_10      10
`define ST_11      11
`define ST_12      12
`define ST_13      13
`define ST_14      14
`define ST_15      15
`define ST_16      16
`define ST_17      17
`define ST_18      18
`define ST_19      19
`define ST_NORM    20
`define ST_DENORM  21
`define ST_OUT     22
`define ST_ERR     23

////////////////
// constants  //
////////////////
    
module mul_ieee754_verilog(
    input wire [32-1:0] op1,
    input wire [32-1:0] op2,
    input wire inrdy,
    output reg [32-1:0] res,
    output reg resrdy,
    input wire clk,
    input wire reset  
);
    
    // params
    parameter SIZE_OF_MANTISSA  = 23;
    parameter SIZE_OF_EXPONENT  = 8;

    //////////////
    // SIGNALS  //
    //////////////
    reg [SIZE_OF_EXPONENT-1:0]  exp;
    reg [SIZE_OF_EXPONENT:0]    tmpexp;
    reg [SIZE_OF_MANTISSA-1:0]  m;
    reg [SIZE_OF_MANTISSA:0]    m1;
    reg [SIZE_OF_MANTISSA:0]    m2;
    reg [((SIZE_OF_MANTISSA+1)*2)-1:0]  tmpm;
    reg s;

    reg [5:0] state = `ST_0;
    reg [5:0] next_state = `ST_0;
    
    
    //////////
    // FSM  //
    //////////
    always @(state, op1, m1, op2, m2, tmpm, tmpexp, inrdy)
    
    begin
        case (state)
            // reset
            `ST_0:
            begin
                next_state <= `ST_1;
            end
            
            // wait for inrdy
            `ST_1:
            begin
                if (inrdy == 1)
                    next_state <= `ST_2;
                else
                    next_state <= `ST_1;
            end
                
            // dispatch input
            `ST_2:
            begin
                if ((op1[30:23] == 8'hFF && m1 != 0) || (op2[30:23] == 8'hFF && m2 != 0))
                    begin
                        next_state <= `ST_NAN;
                    end
                else if ((op1[30:23] == 8'hFF && m1 == 0 && op2[30:23] == 0 && m2 == 0) || (op1[30:23] == 0 && m1 == 0 && op2[30:23] == 8'hFF && m2 == 0))
                    begin
                        next_state <= `ST_NAN;
                    end
                else if ((op1[30:23] == 8'hFF && m1 == 0) || (op2[30:23] == 8'hFF && m2 == 0))
                    begin
                        next_state <= `ST_INF;
                    end
                else if ((op1[30:23] == 0 && m1 == 0) || (op2[30:23] == 0 && m2 == 0))
                    begin
                        next_state <= `ST_ZERO;
                    end
                else
                    begin
                        next_state <= `ST_6;
                    end
            end
                    
            // dispatch normalized and denormalized input
            `ST_6:
            begin
                if (op1[30:23] == 0 || op2[30:23] == 0)
                    begin
                        next_state <= `ST_ERR;
                    end
                else
                    begin
                        next_state <= `ST_10;
                    end 
            end
                    
            // view if mantissa result is normalized or not
            `ST_10:
            begin
                if (tmpm[47:46] == 2'b10 || tmpm[47:46] == 2'b11)
                    begin
                        // easy normalizzation
                        next_state <= `ST_11;
                    end
                    
                else if (tmpm[47:46] == 2'b00)
                    begin
                        // required shift normalization
                        next_state <= `ST_12;
                    end
                else // case "10"
                    begin
                        // already normalized
                        next_state <= `ST_NORM;
                    end
            end
            
            // number normalized
            `ST_11:
            begin
                next_state <= `ST_NORM;
            end

            
            // check for exponent overflow
            `ST_12:
            begin
                if (tmpexp[8] == 1'b1)
                    begin
                        next_state <= `ST_13;
                    end
                else
                    begin
                        next_state <= `ST_14;
                    end
            end
            
            // case: got overflow during multiplication
            `ST_13:
            begin
                if (tmpm[47:46] == 2'b00)
                    begin
                        next_state <= `ST_13;
                    end
                else
                    begin
                        next_state <= `ST_NORM;
                    end
            end
            
            // case: no overflow but can throw underflow
            `ST_14:
            begin
                if (tmpexp[8:0] == 0)
                    begin
                        next_state <= `ST_DENORM;
                    end
                else if (tmpm[47:46] == 2'b00)
                    begin
                        next_state <= `ST_14;
                    end
                else
                    begin
                        next_state <= `ST_NORM;
                    end
            end
            
            // normalization state dispatch
            `ST_NORM:
            begin
                if (tmpexp[8] == 1'b1)
                    begin
                        next_state <= `ST_INF;
                    end
                else
                    begin
                        next_state <= `ST_15;
                    end
            end

            `ST_DENORM:
             begin
                next_state <= `ST_16;
             end
             
            `ST_15:
            begin
                next_state <= `ST_16;
            end
                
            `ST_16:
            begin
                if (tmpm[22] == 1'b0)
                    begin
                        next_state <= `ST_17;
                    end
                else
                    begin
                        next_state <= `ST_18;
                    end
            end

            `ST_17:
            begin
                next_state <= `ST_OUT;
            end
            
            `ST_18:
            begin
                if (tmpm[47:46] == 2'b01)
                    begin
                        next_state <= `ST_19;
                    end
                else
                    begin
                        next_state <= `ST_17;
                    end
            end
            
            `ST_19:
            begin
                next_state <= `ST_OUT;
            end
            
            `ST_ZERO:
            begin
                next_state <= `ST_OUT;
            end
            
            `ST_NAN:
            begin
                next_state <= `ST_OUT;
            end
                
            `ST_INF:
            begin
                next_state <= `ST_OUT;
            end
            
            `ST_OUT:
            begin
                next_state <= `ST_0;
            end
            
            `ST_ERR:
            begin
                next_state <= `ST_0;
            end
           
           default:
           begin
                next_state <= `ST_0;
           end
       endcase
    end


    ////////////////
    //  DATAPATH  //
    ////////////////
    always @(posedge clk, posedge reset) 
    begin 
        if(reset == 1'b1)
            begin
                state <= `ST_0;
                        m       <= 0;
                        m1      <= 0;
                        m2      <= 0;
                        tmpm    <= 0;
                        tmpexp  <= 0;
                        exp     <= 0;
                        s       <= 0;
                        resrdy <= 0;
                        res <= 0;

            end
        else
            begin
                state <= next_state;
                
                case(next_state)
                    `ST_0: 
                    begin
                        m       <= 0;
                        m1      <= 0;
                        m2      <= 0;
                        tmpm    <= 0;
                        tmpexp  <= 0;
                        exp     <= 0;
                        s       <= 0;
                        resrdy <= 0;
                        res <= 0;
                    end
                    
                    `ST_1:
                    begin
                        // do nothing
                    end
                    
                    `ST_2:
                    begin
                        m1[22:0] <= op1[22:0];
                        m2[22:0] <= op2[22:0];
                        s <= op1[31] ^ op2[31];
                    end
                    
                    `ST_6:
                    begin
                        m1[23] <= 1'b1;
                        m2[23] <= 1'b1;
                    end
                    
                    `ST_10:
                    begin
                        tmpexp <= op1[30:23] + op2[30:23] - 8'd127;
                        tmpm   <= m1 * m2;
                    end
                    
                    `ST_11:
                    begin
                        tmpm   <= tmpm >> 1;
                        tmpexp <= tmpexp + 9'd1;
                    end
                    
                    `ST_12:
                    begin
                        // do nothing
                    end
                    
                    `ST_13:
                    begin
                        tmpm   <= tmpm << 1;
                        tmpexp <= tmpexp - 9'd1;
                    end
                    
                    `ST_14:
                    begin
                        tmpm   <= tmpm << 1;
                        tmpexp <= tmpexp - 9'd1;
                    end
                    
                    `ST_NORM:
                    begin
                        // do nothing
                    end
                    
                    `ST_DENORM:
                    begin
                        exp <= 8'd0;
                    end
                    
                    `ST_15:
                    begin
                        exp <= tmpexp[7:0];
                    end
                    
                    `ST_16:
                    begin
                        // do nothing
                    end
                    
                    `ST_17:
                    begin
                        m <= tmpm[45:23];
                    end
                    
                    `ST_18:
                    begin
                        tmpm[47:22] <= tmpm[47:22] + 26'd1;
                    end
                    
                    `ST_19:
                    begin
                        tmpexp <= tmpexp + 9'd1;
                    end
                    
                    `ST_NAN:
                    begin
                        exp <= 8'hFF;
                        m   <= {1'b1, 22'b0};
                        s   <= 1'b0;
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
                    
                    `ST_OUT:
                    begin
                        resrdy <= 1'b1;
                        res[31] <= s;
                        res[30:23] <= exp;
                        res[22:0]  <=m;
                    end
                    
                    `ST_ERR:
                    begin
                        resrdy <= 1'b1;
                        res <= 0;
                        res[30:23] <= exp;
                        res[22:0]  <=m;
                    end
                    
                    default: 
                    begin 
                        // do nothings
                    end
                endcase
           end
    end
endmodule
