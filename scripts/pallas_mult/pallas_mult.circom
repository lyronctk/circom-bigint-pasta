pragma circom 2.0.2;

include "../../circuits/pasta.circom";

template Main(n, k) {
    signal input a[k];
    signal input b[k]; 
    signal input c[k];

    signal s[k] <== PallasScalarMultModP(n, k)(a, b);
    signal eq <== BigIsEqual(k)([s, c]);
    eq === 1;
}

component main { public [a, b, c] } = Main(86, 3);
