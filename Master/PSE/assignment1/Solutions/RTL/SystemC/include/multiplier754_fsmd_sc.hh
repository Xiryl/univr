#ifndef MULTIPLIER754_FSMD_SC_HH
#define MULTIPLIER754_FSMD_SC_HH

#include <systemc.h>

#define SIZE 32
#define EXPONENT_SIZE 8
#define MANTISSA_SIZE 23

SC_MODULE(multiplier754_fsmd_sc)
{
    // FSM states definition.
    typedef enum
    {
        ST_0,
        ST_1,
        ST_2,
        ST_3,
        ST_4,
        ST_5,
        ST_6,
        ST_7,
        ST_8,
        ST_9,
        ST_10,
        ST_11,
        ST_12,
        ST_13,
        ST_14,
        ST_15,
        ST_NAN,
        ST_INF,
        ST_ZERO,
        ST_ROUND,
        ST_NORM,
        ST_DENORM,
        ST_END
    } STATE_T;

    // Inputs.
     sc_in< sc_logic >               clk;
    sc_in< sc_logic >       rst;
    sc_in< sc_lv<SIZE> >    in_op1;
    sc_in< sc_lv<SIZE> >    in_op2;
    sc_in< sc_logic >       in_rdy;

    // Outputs.
    sc_out< sc_lv<SIZE> >   out_res;
    sc_out< sc_logic >      out_rdy;

    // To describe the finite set of states.
    sc_signal< STATE_T > state;
    sc_signal< STATE_T > next_state;

    // Floatig point 754 single precison rapresentation.
    sc_signal< sc_lv<EXPONENT_SIZE> >   e;
    sc_signal< sc_lv<MANTISSA_SIZE> >   m;
    sc_signal< sc_lv<1> >               s;

    // Temporary signals for calculation
    sc_signal< sc_lv<MANTISSA_SIZE + 1> > m1;
    sc_signal< sc_lv<MANTISSA_SIZE + 1> > m2;
    sc_signal< sc_lv<(MANTISSA_SIZE + 1) * 2> > tmp_m;
    sc_signal< sc_lv<EXPONENT_SIZE + 1> > tmp_e;

    // FSM.
    void fsm();
    // Datapath.
    void datapath();

    SC_CTOR(multiplier754_fsmd_sc)
    {
        SC_METHOD(fsm);
        sensitive << clk.pos();
        sensitive << rst;

        SC_METHOD(datapath);
        sensitive << next_state;
    };
};

#endif
