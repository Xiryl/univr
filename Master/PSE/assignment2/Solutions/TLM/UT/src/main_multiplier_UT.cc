#include "multiplier_UT.h"
#include "multiplier_UT_testbench.h"

class multiplier_top : public sc_module {

  private:
    multiplier_UT  m_target;

    multiplier_UT_testbench m_initiator;


public:

  multiplier_top(sc_module_name name)
    : sc_module(name)
    , m_target("target")
    , m_initiator("initiator")
  {
    // bind the TLM ports
    m_initiator.initiator_socket(m_target.target_socket);
  }

};

int main(int argc, char* argv[])
{

  multiplier_top top("top");
  sc_start();

  return 0;

}
