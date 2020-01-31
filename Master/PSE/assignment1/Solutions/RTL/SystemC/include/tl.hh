
#ifndef TL_HH
#define TL_HH

#include <systemc.h>

#include "multiplier754_fsmd_sc.hh"

SC_MODULE(tl)
{
    typedef enum
    {
        S_0,
        S_1,
        S_2,
        S_3,
        S_4,
        S_5
    } STATE_T;

    sc_signal< sc_lv<SIZE> >  vhd_res;
    sc_signal< sc_logic >     vhd_res_rdy;

    sc_signal< sc_lv<SIZE> >  v_res;
    sc_signal< sc_logic >     v_res_rdy;

    sc_signal< sc_lv<SIZE> >  tmp;
    sc_signal< STATE_T >      next_state;

    // Multiplier modules.
    multiplier754_fsmd_sc vhd_mul;
    multiplier754_fsmd_sc v_mul;

    // FSM.
    void fsm();

    // Inputs.
     sc_in< sc_logic >    	  clk;
    sc_in< sc_logic>      rst;
    sc_in< sc_lv<SIZE> >  in_op1;
    sc_in <sc_lv<SIZE> >  in_op2;
    sc_in< sc_logic >     vhd_in_rdy;
    sc_in< sc_logic >     v_in_rdy;

    // Outputs.
    sc_out< sc_lv<SIZE> > out_res;
    sc_out< sc_lv<2> >    out_rdy;

    SC_CTOR(tl)
	: vhd_mul("vhd_mul")
	, v_mul("v_mul")
    {
        vhd_mul.clk(clk);
        vhd_mul.rst(rst);
        vhd_mul.in_op1(in_op1);
        vhd_mul.in_op2(in_op2);
        vhd_mul.in_rdy(vhd_in_rdy);
        vhd_mul.out_res(vhd_res);
        vhd_mul.out_rdy(vhd_res_rdy);

        v_mul.clk(clk);
        v_mul.rst(rst);
        v_mul.in_op1(in_op1);
        v_mul.in_op2(in_op2);
        v_mul.in_rdy(v_in_rdy);
        v_mul.out_res(v_res);
        v_mul.out_rdy(v_res_rdy);

        SC_METHOD(fsm);
            sensitive << clk.pos();
            sensitive << rst;
    };
};
#endif
