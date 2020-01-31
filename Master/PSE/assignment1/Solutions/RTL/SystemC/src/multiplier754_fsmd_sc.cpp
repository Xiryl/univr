#include "multiplier754_fsmd_sc.hh"

#define SIZE 32
#define SIZE_OF_MANTISSA 23
#define SIZE_OF_EXPONENT 8

// fsm process
void multiplier754_fsmd_sc :: fsm()
{
    if (rst.read() == SC_LOGIC_1)
    {
        next_state = ST_0;
    }
    else if (clk.read() == SC_LOGIC_1)
    {
        switch (state) 
        {
            case ST_0: 
            {
                next_state = ST_1;
                break;
            }
            case ST_1:
            {
                if (in_rdy.read() == sc_dt::SC_LOGIC_1)
                    next_state = ST_2;
                else
                    next_state = ST_1;
                
                break;
            }
            case ST_2:
            {
                    
                if ((in_op1.read().range(30, 23) == 0xFF && m1.read() != 0)
                    || (in_op1.read().range(30, 23) == 0xFF && m2.read() != 0))
                { 
                    // in_op1 or in_op1 are NaN
                    next_state = ST_NAN;
                }
                else if ((in_op1.read().range(30, 23) == 0xFF && m1.read() == 0
                    && in_op1.read().range(30, 23) == 0 && m2.read() == 0)
                    || (in_op1.read().range(30, 23) == 0 && m1.read() == 0
                    && in_op1.read().range(30, 23) == 0xFF && m2.read() == 0))
                { 
                    // in_op1 is inf and in_op1 is 0 or vice versa
                    next_state = ST_NAN;
                }
                else if ((in_op1.read().range(30, 23) == 0xFF && m1.read() == 0)
                    || (in_op1.read().range(30, 23) == 0xFF && m2.read() == 0))
                { 
                    // in_op1 or in_op1 are inf
                    next_state = ST_INF;
                }
                else if ((in_op1.read().range(30, 23) == 0 && m1.read() == 0)
                    || (in_op1.read().range(30, 23) == 0 && m2.read() == 0))
                { 
                    // in_op1 or in_op1 are zero
                    next_state = ST_ZERO;
                }
                else
                { 
                    // in_op1 and in_op1 are normalized or denormalized number 
                    next_state = ST_3;
                }

                break;
            }
            case ST_3:
            {
                if (in_op1.read().range(30, 23) != 0 && in_op1.read().range(30, 23) != 0)
                {
                    // Both in_op1 and in_op1 are denormalized
                    next_state = ST_4;
                }
                else if (in_op1.read().range(30, 23) != 0)
                {
                    // Only in_op1 is denormalized
                    next_state = ST_5;
                }
                else if (in_op1.read().range(30, 23) != 0)
                {
                    // Only in_op1 is denormalized
                    next_state = ST_6;
                }
                else 
                {
                    // Both normalized
                    next_state = ST_7;
                } 

                break;
            }
            case ST_4:
            {
                next_state = ST_7;
                break;
            }
            case ST_5:
            {
                next_state = ST_7;
                break;
            }
            case ST_6:
            {
                next_state = ST_7;
                break;
            }
            case ST_7:
            {
                if (tmp_m.read().range(47, 46) == "10" 
                    || tmp_m.read().range(47, 46) == "11") 
                {
                    // Only one DX shift
                    next_state = ST_8;
                }
                else if (tmp_m.read().range(47, 46) == "00")
                {
                    // SX shift
                    next_state = ST_9;
                }
                else // if (tmp_m[47:46] == 2'b01)
                {
                    // Mantissa already normalized
                    next_state = ST_NORM;
                }

                break;
            }
            case ST_8:
            {
                next_state = ST_NORM;
                break;
            }
            case ST_9:
            {
                if (tmp_e.read()[8] == 1)
                {
                    // Already in overflow
                    next_state = ST_10;
                }
                else
                {
                    // Not in overflow, so risk underflow
                    next_state = ST_11; 
                }

                break;
            }
            case ST_10:
            {
                if (tmp_m.read().range(47, 46) == "00")
                {
                    // Still SX shift
                    next_state = ST_10;
                }
                else 
                {
                    // SX shift finished 
                    next_state = ST_NORM;
                }

                break;
            }
            case ST_11:
            {
                if (tmp_e.read().range(8, 0) == 0)
                {
                    // Underflow
                    next_state = ST_DENORM;
                }
                else if (tmp_m.read().range(47,46) == "00")
                {
                    // Still SX shift
                    next_state = ST_11;
                }
                else
                {
                    // SX shift finished 
                    next_state = ST_NORM;
                }

                break;
            }
            case ST_NORM:
            {
                if (tmp_e.read()[8] == 0)
                {
                    // Not in overflow
                    next_state = ST_12;
                }
                else 
                {
                    // Overflow: result is inf
                    next_state = ST_INF;
                }

                break;
            }
            case ST_DENORM:
            {
                next_state = ST_13;
                break;
            }
            case ST_12:
            {
                next_state = ST_13;
                break;
            }
            case ST_13:
            {
                if (tmp_m.read()[22] == 1)
                {
                    // Round
                    next_state = ST_ROUND;
                }
                else 
                {
                    // Prepare result
                    next_state = ST_14;
                }

                break;
            }
            case ST_ROUND:
            {
                if (tmp_m.read().range(47, 46) == "01")
                {
                    // Prepare result
                    next_state = ST_14;
                }
                else // if (tmp_m(47 downto 46) = '10')
                {
                    next_state = ST_15;
                }

                break;
            }
            case ST_14:
            {
                next_state = ST_END;
                break;
            }
            case ST_15:
            {
                next_state = ST_NORM;
                break;
            }
            case ST_NAN:
            {
                next_state = ST_END;
                break;
            }
            case ST_INF:
            {
                next_state = ST_END;
                break;
            }
            case ST_ZERO:
            {
                next_state = ST_END;
                break;
            }
            case ST_END:
            {
                next_state = ST_1;
                break;
            }
            default: 
            { 
                next_state = ST_0;
                break;
            }
        }
    }
}

// Datapath proess
void multiplier754_fsmd_sc :: datapath()
{
    state.write(next_state.read());
    switch (next_state)
    {
        case ST_0: 
        {
            e    = 0;
            tmp_e = 0;
            m      = 0;
            m1     = 0;
            m2     = 0;
            tmp_m   = 0;
            s      = 0;
            break;
        }
        case ST_1:
        {
            // do nothing
            break;
        }
        case ST_2:
        {
            sc_uint<1> bit_zero = 0;
            m1 = (bit_zero, in_op1.read().range(22, 0));
            m2 = (bit_zero, in_op1.read().range(22, 0));

            s = (bool) in_op1.read().get_bit(31) ^ (bool) in_op1.read().get_bit(31);
            
            break;
        }
        case ST_3:
        {   
            // do nothing.
            break;
        }
        case ST_4:
        {
            sc_uint<1> bit_one = 1;
            m1 = (bit_one, m1.read().range(22, 0));
            m2 = (bit_one, m2.read().range(22, 0));

            break;
        }
        case ST_5:
        {
            sc_uint<1> bit_one = 1;
            m1 = (bit_one, m1.read().range(22, 0));

            break;
        }
        case ST_6:
        {
            sc_uint<1> bit_one = 1;
            m2 = (bit_one, m2.read().range(22, 0));

            break;
        }
        case ST_7:
        {
            tmp_e = in_op1.read().range(30, 23).to_uint()
                   + in_op1.read().range(30, 23).to_uint()
                   - 127;
            tmp_m = m1.read().to_uint64() * m2.read().to_uint64();

            break;
        }
        case ST_8:
        {
            tmp_m   = tmp_m.read() >> 1;
            tmp_e = tmp_e.read().to_uint() + 1;

            break;
        }
        case ST_9:
        {
            // do nothing
            break;
        }
        case ST_10:
        {
            tmp_m   = tmp_m.read() << 1;
            tmp_e = tmp_e.read().to_uint() - 1;

            break;
        }
        case ST_11:
        {
            tmp_m   = tmp_m.read() << 1;
            tmp_e = tmp_e.read().to_uint() - 1;

            break;
        }
        case ST_NORM:
        {
            // do nothing
            break;
        }
        case ST_DENORM:
        {
            e = 0;
            break;
        }
        case ST_12:
        {
            e = tmp_e.read().range(7, 0);
            break;
        }
        case ST_13:
        {
            // do nothing
            break;
        }
        case ST_ROUND:
        {
            // tmp_m[47:22] + 1 
            // tmp_m[47:22] in the form
            // 01 | .... from bit 45 to 23 .... | 1
            sc_lv<22> all_zero = 0;

            tmp_m = (tmp_m.read().range(47, 22).to_uint() + 1, all_zero);
            
            break;
        }
        case ST_14:
        {
            m = tmp_m.read().range(45, 23);
            break;
        }
        case ST_15:
        {
            tmp_e = tmp_e.read().to_uint() + 1;
            break;
        }
        case ST_NAN:
        {
            sc_lv<SIZE_OF_MANTISSA> mantissa_nan = 0;
            mantissa_nan[22] = 1;

            e = 0xFF;
            m   = mantissa_nan;
            s   = 0;

            break;
        }
        case ST_INF:
        {
            e = 0xFF;
            m   = 0;

            break;
        }
        case ST_ZERO:
        {
            e = 0x00;
            m   = 0;

            break;
        }
        case ST_END:
        {
            out_rdy.write(sc_dt::SC_LOGIC_1);
            out_res.write((s.read(), e.read(), m.read()));

            break;
        }
        default: 
        { 
            // do nothings
            break;
        }
    }
}

