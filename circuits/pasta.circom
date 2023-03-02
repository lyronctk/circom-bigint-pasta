pragma circom 2.1.1;

include "./bigint.circom";
include "./pasta_func.circom";

template PallasScalarMultModP(n, k) {
    assert((n == 86 && k == 3));

    signal input a[k];
    signal input b[k];
    signal output out[k];

    var q[k] = getPallasScalar(n, k);
    out <== BigMultModP(n, k)(a, b, q);
}
