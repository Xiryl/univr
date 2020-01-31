#include "multiplier_UT_testbench.h"

void multiplier_UT_testbench::invalidate_direct_mem_ptr(uint64 start_range,
                                                        uint64 end_range) {}

tlm::tlm_sync_enum
multiplier_UT_testbench::nb_transport_bw(tlm::tlm_generic_payload &trans,
                                         tlm::tlm_phase &phase, sc_time &t) {
    return tlm::TLM_COMPLETED;
}

void multiplier_UT_testbench::run() {

    sc_time local_time;
    // First transaction (initialization)
    iostruct multiplier_packet;
    tlm::tlm_generic_payload payload;

    // cout<<"Calculate the square multiplier of 10000000  numbers!"<<endl;
  // 10000000            10000000
    for (int i = 1; i <= 1000000000; i++) {

        multiplier_packet.datain_op1 = rand();
        multiplier_packet.datain_op2 = rand();
        cout<<"i "<<i<<'\n';
        payload.set_data_ptr((unsigned char *)&multiplier_packet);
        payload.set_address(0);
        payload.set_write();

        // start write transaction
        initiator_socket->b_transport(payload, local_time);

        // start read transaction
        if (payload.get_response_status() == tlm::TLM_OK_RESPONSE) {
            // cout << "\t is: " << multiplier_packet.result << endl;
        }
    }
    sc_stop();
}

multiplier_UT_testbench::multiplier_UT_testbench(sc_module_name name)
    : sc_module(name) {

    initiator_socket(*this);

    SC_THREAD(run);
}
