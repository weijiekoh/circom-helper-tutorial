include "../node_modules/circomlib/circuits/comparators.circom";
include "../node_modules/circomlib/circuits/mux1.circom";

template Sort(n) {
    signal input in[n];
    signal output out;

    // TODO: output 1 if the input array is sorted (ascending order)
    // otherwise, output 0
    // hint: use LessThan(252) or LessEqThan(252) or GreaterThan(252) or
    // GreaterEqThan(252)

    /*component leq[n];*/
    /*for (var i = 0; i < n; i ++) {*/
        /*leq[i] = LessEqThan(252);*/
        /*leq[i].in[0] <== .....*/
        /*leq[i].in[1] <== .....*/
    /*}*/

    /*// Constraint*/
    /*in[0] === in[1] * 2;*/
}
