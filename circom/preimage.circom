include "../node_modules/circomlib/circuits/comparators.circom";
include "../node_modules/circomlib/circuits/mux1.circom";

template Preimage() {
    signal input in[2];
    signal input selector;
    signal output out;

    /*
    if selector == 0:
        output in[0]
    else:
        output in[1]
    */

    // Create a new signal "switch" that is 0 or 1 depending on the value of
    // selector
    component iz = IsZero();
    iz.in <== selector;

    signal switch;
    switch <== iz.out;
    
    // If selector is 0, switch is 1
    // If selector != 0, switch is 0

    component mux = Mux1();
    mux.s <== switch;
    mux.c[0] <== in[1];
    mux.c[1] <== in[0];

    out <== mux.out;
    /*
    if switch == 0:
        output in[1]
    else:
        output in[0]
    */
}
