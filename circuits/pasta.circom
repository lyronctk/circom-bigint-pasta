pragma circom 2.1.1;

include "./bigint.circom";

template Pallas(n, k) {
    signal input a;
    signal input b;
    signal input c;

    a * b === c;

    signal dummy;
    dummy <== a * b;
}
