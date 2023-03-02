/*
 * Utility templates for doing arithmetic in the Pallas & Vesta scalar fields. 
 * Done with BigInt math since they're built over 255-bit fields (order of 
 * bn128 is only 254 bits). Numbers are split across 3 registers, each of size
 * 86 bits (total of 86 * 3 = 258 bits so only 3 are wasted). 
 */
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

template PallasScalarAddModP(n, k) {
    assert((n == 86 && k == 3));

    signal input a[k];
    signal input b[k];
    signal output out[k];

    var q[k] = getPallasScalar(n, k);
    out <== BigAddModP(n, k)(a, b, q);
}

template VestaScalarMultModP(n, k) {
    assert((n == 86 && k == 3));

    signal input a[k];
    signal input b[k];
    signal output out[k];

    var q[k] = getVestaScalar(n, k);
    out <== BigMultModP(n, k)(a, b, q);
}

template VestaScalarAddModP(n, k) {
    assert((n == 86 && k == 3));

    signal input a[k];
    signal input b[k];
    signal output out[k];

    var q[k] = getVestaScalar(n, k);
    out <== BigAddModP(n, k)(a, b, q);
}
