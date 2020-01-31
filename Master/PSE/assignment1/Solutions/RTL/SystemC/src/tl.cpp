
#include "tl.hh"

void tl :: fsm()
{
    if (rst.read() == sc_dt::SC_LOGIC_1)
    {
        next_state = S_0;

        out_res.write(0);
        out_rdy.write("00");
        tmp.write(0);
    }
    else
    {
        switch (next_state)
        {
            case S_0:
            {
                next_state = S_1;
                out_res.write(0);
                out_rdy.write("00");
                tmp = 0;
                break;
            }
            case S_1:
            {
                // cout << vhd_res_rdy << vhd_res_rdy << "\n";
                if (vhd_res_rdy == sc_dt::SC_LOGIC_1 && v_res_rdy == sc_dt::SC_LOGIC_1)
                {
//                    cout << "3\n";
                    next_state = S_4;
                }
                else if (vhd_res_rdy == sc_dt::SC_LOGIC_1)
                {
                   // cout << "1\n";
                    next_state = S_2;
                }
                else if (v_res_rdy == sc_dt::SC_LOGIC_1)
                {
                    // cout << "2\n";
                    next_state = S_3;
                }
                else
                {
                    next_state = S_1;
                }
                break;
            }
            case S_2:
            {
                next_state = S_1;

                out_rdy.write("01");
                out_res.write(vhd_res);
                break;
            }
            case S_3:
            {
                next_state = S_1;

                out_rdy.write("10");
                out_res.write(v_res);
                break;
            }
            case S_4:
            {
                next_state = S_5;

                out_rdy.write("01");
                out_res.write(vhd_res);
                tmp = v_res;
                break;
            }
            case S_5:
            {
                next_state = S_1;

                out_rdy.write("10");
                out_res.write(tmp);
                break;
            }
            default:
            {
                next_state = S_0;
                break;
            }
        }
    }
}
