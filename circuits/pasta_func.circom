/*
 * Constants for Pasta curves found in 
 * https://o1-labs.github.io/proof-systems/specs/pasta.html represented with 
 * three 86-bit registers. 
 */
pragma circom 2.1.1;

function getPallasBase(n, k) {
    assert((n == 86 && k == 3));
    var ret[3] = [
        15683488189232138132914177, 
        588853276709, 
        4835703278458516698824704
    ];
    return ret;
}

function getPallasScalar(n, k) {
    assert((n == 86 && k == 3));
    var ret[3] = [
        24975960799879914347036673,
        588853276710,
        4835703278458516698824704
    ];
    return ret; 
}

function getVestaBase(n, k) {
    return getPallasScalar(n, k);
}

function getVestaScalar(n, k) {
    return getPallasBase(n, k);
}
