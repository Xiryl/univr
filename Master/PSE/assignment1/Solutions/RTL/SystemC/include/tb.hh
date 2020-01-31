#ifndef TB_HH
#define TB_HH

#include <systemc.h>

SC_MODULE(tb)
{
    // Port IN.
    sc_in< sc_lv<32> > out_res;
    sc_in< sc_lv<2> > out_rdy;

    /// Port OUT.
    sc_out< sc_lv<32> > in_op1;
    sc_out< sc_lv<32> > in_op2;
    sc_out< sc_logic > vhd_in_rdy, v_in_rdy;
    sc_out< sc_logic > clk;
    sc_out< sc_logic > rst;

    // Update clock value.
    void clk_gen();
     // Running stimuli for Top Level.
    void run();

    SC_CTOR(tb)
    {
        SC_THREAD(clk_gen);

        SC_THREAD(run);
            sensitive << clk.pos();
    };
};
#endif


