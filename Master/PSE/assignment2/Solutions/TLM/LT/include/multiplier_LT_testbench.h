#ifndef _multiplier_LT_TESTBENCH_H_
#define _multiplier_LT_TESTBENCH_H_

#include "define_LT.h"
#include <systemc.h>
#include <tlm.h>
#include <tlm_utils/tlm_quantumkeeper.h>

class multiplier_LT_testbench : public sc_module,
                                public virtual tlm::tlm_bw_transport_if<> {

private:
    SC_HAS_PROCESS(multiplier_LT_testbench);

    virtual void invalidate_direct_mem_ptr(uint64 start_range,
                                           uint64 end_range);

    virtual tlm::tlm_sync_enum nb_transport_bw(tlm::tlm_generic_payload &trans,
                                               tlm::tlm_phase &phase,
                                               sc_time &t);

    tlm_utils::tlm_quantumkeeper m_qk;

    void run();

public:
    tlm::tlm_initiator_socket<> initiator_socket;

    multiplier_LT_testbench(sc_module_name name);
};

#endif
