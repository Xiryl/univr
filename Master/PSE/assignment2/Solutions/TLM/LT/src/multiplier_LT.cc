#include "multiplier_LT.h"

multiplier_LT::multiplier_LT(sc_module_name name_)
    : sc_module(name_), target_socket("target_socket"),
      pending_transaction(NULL) {

    target_socket(*this);
}

void multiplier_LT::b_transport(tlm::tlm_generic_payload &trans, sc_time &t) {

    timing_annotation = SC_ZERO_TIME;

    ioDataStruct = *((iostruct *)trans.get_data_ptr());

    if (trans.is_write()) {
        multiplier_function();
        trans.set_response_status(tlm::TLM_OK_RESPONSE);
        ioDataStruct.result = tmp_result;
        *((iostruct *)trans.get_data_ptr()) = ioDataStruct;
    }
    else if (trans.is_read()) {
        ioDataStruct.result = tmp_result;
        *((iostruct *)trans.get_data_ptr()) = ioDataStruct;
    }

    t += timing_annotation;
}

bool multiplier_LT::get_direct_mem_ptr(tlm::tlm_generic_payload &trans,
                                       tlm::tlm_dmi &dmi_data) {
    return false;
}

tlm::tlm_sync_enum
multiplier_LT::nb_transport_fw(tlm::tlm_generic_payload &trans,
                               tlm::tlm_phase &phase, sc_time &t) {
    return tlm::TLM_COMPLETED;
}

unsigned int multiplier_LT::transport_dbg(tlm::tlm_generic_payload &trans) {
    return 0;
}

void multiplier_LT::multiplier_function() {
    ieee754_single_precision tmp_op1, tmp_op2, mul;

    tmp_op1.uint = ioDataStruct.datain_op1;
    tmp_op2.uint = ioDataStruct.datain_op2;
    mul.floating_point = tmp_op1.floating_point * tmp_op2.floating_point;

    tmp_result = mul.uint;
    
    timing_annotation += sc_time(9, SC_NS);
}

// Initialization:
void multiplier_LT::end_of_elaboration() {}

void multiplier_LT::reset() {}
