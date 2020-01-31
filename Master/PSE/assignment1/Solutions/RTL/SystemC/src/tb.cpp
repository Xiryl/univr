#include "tb.hh"


void tb::clk_gen() 
{
    cout << "Starting tb::clk_gen()" << endl;
    while(true)
    {
        clk.write(sc_dt::SC_LOGIC_1);
        wait(10000000 / 2, sc_core::SC_NS);
        clk.write(sc_dt::SC_LOGIC_0);
        wait(10000000 / 2, sc_core::SC_NS);
    }
}

void tb :: run() 
{
    cout << "Starting tb::run()\n";

    wait();
    rst.write(sc_dt::SC_LOGIC_1);
    wait();
    rst.write(sc_dt::SC_LOGIC_0);

    // Init values.
    vhd_in_rdy.write(sc_dt::SC_LOGIC_0);
    v_in_rdy.write(sc_dt::SC_LOGIC_0);

    in_op1.write("01000000000000000000000000000000");
    in_op2.write("01000000000000000000000000000000");

    wait();

    vhd_in_rdy.write(sc_dt::SC_LOGIC_1);
    v_in_rdy.write(sc_dt::SC_LOGIC_1);

    // Wait out_response.
    while(out_rdy.read() == "00") wait();

    if (out_rdy.read() == "01")
    {
        cout << "Out[01]: \n" 
            << out_res.read().to_string()
            << "\n";

        while(out_rdy.read() == "01") wait();

        cout << "Out[10]: \n" 
            << out_res.read().to_string()
           << "\n";
    }
    else if (out_rdy.read() == "10")
    {
        cout << "Out[10]: \n" 
            << out_res.read().to_string()
           << "\n";

        while(out_rdy.read() == "10") wait();

        cout << "Out[01]: \n" 
            << out_res.read().to_string()
         << "\n";
    }

    vhd_in_rdy.write(sc_dt::SC_LOGIC_0);
    v_in_rdy.write(sc_dt::SC_LOGIC_0);

    cout << "Ending tb::run()." << endl;
    // sc_stop();
}