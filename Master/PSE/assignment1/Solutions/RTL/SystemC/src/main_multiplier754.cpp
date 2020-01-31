#include "tl.hh"
#include "tb.hh"

int sc_main(int argc, char * argv[])
{
    sc_signal< sc_logic > clk;
    sc_signal< sc_logic >     rst;
    sc_signal< sc_lv<SIZE> >  in_op1;
    sc_signal< sc_lv<SIZE> >  in_op2;
    sc_signal< sc_logic >     vhd_in_rdy;
    sc_signal< sc_logic >     v_in_rdy;

    sc_signal< sc_lv<SIZE> > out_res;
    sc_signal< sc_lv<2> > out_rdy;

    tb testbench("testbench");
    tl dut("dut");

    // tb
    testbench.clk(clk);
    testbench.rst(rst);
    testbench.in_op1(in_op1);
    testbench.in_op2(in_op2);
    testbench.vhd_in_rdy(vhd_in_rdy);
    testbench.v_in_rdy(v_in_rdy);
    testbench.out_res(out_res);
    testbench.out_rdy(out_rdy);

    // tl
    dut.clk(clk);
    dut.rst(rst);
    dut.in_op1(in_op1);
    dut.in_op2(in_op2);
    dut.vhd_in_rdy(vhd_in_rdy);
    dut.v_in_rdy(v_in_rdy);
    dut.out_res(out_res);
    dut.out_rdy(out_rdy);

    sc_start();

    return 0;
}

