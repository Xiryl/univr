#include "multiplier_LT_testbench.h"

void multiplier_LT_testbench::invalidate_direct_mem_ptr(uint64 start_range,
                                                        uint64 end_range) {}

tlm::tlm_sync_enum
multiplier_LT_testbench::nb_transport_bw(tlm::tlm_generic_payload &trans,
                                         tlm::tlm_phase &phase, sc_time &t) {
    return tlm::TLM_COMPLETED;
}

void multiplier_LT_testbench::run() {
    //  cout<<sc_time_stamp()<<" - "<<name()<<" - run"<<endl;

    sc_time local_time = m_qk.get_local_time();

    // First transaction (initialization)
    iostruct multiplier_packet;
    tlm::tlm_generic_payload payload;

    for (int i = 1; i <= 1000000000; i++) {
        cout<<"i: "<<i<<"\n";
        multiplier_packet.datain_op1 = rand();
        multiplier_packet.datain_op2 = rand();
        // cout<<"\tThe square multiplier of "<<multiplier_packet.datain;
        payload.set_data_ptr((unsigned char *)&multiplier_packet);
        payload.set_address(0);
        payload.set_write();

        local_time = m_qk.get_local_time();

        // start write transaction

        initiator_socket->b_transport(payload, local_time);

        // start read transaction
        if (payload.get_response_status() == tlm::TLM_OK_RESPONSE) {
            //  cout << "\t is: " << multiplier_packet.result << endl;
        }

        // cout << "Time: " << sc_time_stamp() << " + " << local_time << endl;
        m_qk.set(local_time);
        if (m_qk.need_sync()) {
            // cout << "SYNCHRONIZING" << endl;
            m_qk.sync();
            // cout << "#####################" << endl;
        }
    }
    sc_stop();
}

multiplier_LT_testbench::multiplier_LT_testbench(sc_module_name name)
    : sc_module(name) {

    initiator_socket(*this);

    SC_THREAD(run);

    m_qk.set_global_quantum(sc_time(500, SC_NS));
    m_qk.reset();
}
