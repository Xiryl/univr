#include "multiplier_UT.h"

multiplier_UT::multiplier_UT(sc_module_name name_)
  : sc_module(name_)
  , target_socket("target_socket")
  , pending_transaction(NULL)
{

  target_socket(*this);

}

void multiplier_UT::b_transport(tlm::tlm_generic_payload& trans, sc_time& t)
{
  // function invoked by the initiator
  
  // download data from the payload
  ioDataStruct = *((iostruct*) trans.get_data_ptr());

  if (trans.is_write()) {
    // cout<<"\t\t[ROOT:] Received invocation of the b_transport primitive - write"<<endl;
    // cout<<"\t\t[ROOT:] Invoking the root_function to calculate the square root"<<endl;

    // start elaboration
    // compute the functionality
    multiplier_function();
    
    ioDataStruct.result = tmp_result;
    
    // and load it on the payload
    *((iostruct*) trans.get_data_ptr()) = ioDataStruct;
    // cout<<"\t\t[ROOT:] Returning result: "<<tmp_result<<endl;
    trans.set_response_status(tlm::TLM_OK_RESPONSE);
  } 
  else if (trans.is_read()){
    // cout<<"\t\t[ROOT:] Received invocation of the b_transport primitive - read"<<endl;

    // return the result
    ioDataStruct.result = tmp_result;

    // and load it on the payload
    *((iostruct*) trans.get_data_ptr()) = ioDataStruct;
    // cout<<"\t\t[ROOT:] Returning result: "<<tmp_result<<endl;
  }

}

void multiplier_UT::multiplier_function() {
    ieee754_single_precision tmp_op1, tmp_op2, mul;

    tmp_op1.uint = ioDataStruct.datain_op1;
    tmp_op2.uint = ioDataStruct.datain_op2;
    mul.floating_point = tmp_op1.floating_point * tmp_op2.floating_point;

    tmp_result = mul.uint;
}



// must be implemented to be compliant with the interface
// not significant in this code

bool multiplier_UT::get_direct_mem_ptr(tlm::tlm_generic_payload& trans, tlm::tlm_dmi& dmi_data)
{
  return false;
}

tlm::tlm_sync_enum multiplier_UT::nb_transport_fw(tlm::tlm_generic_payload& trans, tlm::tlm_phase& phase, sc_time& t)
{
  return tlm::TLM_COMPLETED;
}

unsigned int multiplier_UT::transport_dbg(tlm::tlm_generic_payload& trans)
{
  return 0;
}

void multiplier_UT::end_of_elaboration() {}

void multiplier_UT::reset() {}