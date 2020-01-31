#include "multiplier_LT.h"
#include "multiplier_LT_testbench.h"

class multiplier_top : public sc_module {

private:
    multiplier_LT m_target;

    multiplier_LT_testbench m_initiator;

public:
    multiplier_top(sc_module_name name)
        : sc_module(name), m_target("target"), m_initiator("initiator") {
        m_initiator.initiator_socket(m_target.target_socket);
    }
};

int main(int argc, char *argv[]) {

    multiplier_top top("top");

    sc_start();

    return 0;
}
