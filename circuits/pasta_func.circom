/*
 * Constants for Pasta curves found in 
 * https://o1-labs.github.io/proof-systems/specs/pasta.html represented with 
 * three 86-bit registers. 
 */

function get_pallas_base(n, k) {
    assert((n == 86 && k == 3));
    var ret[100];
    ret[0] = 15683488189232138132914177;
    ret[1] = 588853276709;
    ret[2] = 4835703278458516698824704;
    return ret;
}

function get_pallas_scalar(n, k) {
    assert((n == 86 && k == 3));
    var ret[100];
    ret[0] = 24975960799879914347036673;
    ret[1] = 588853276710;
    ret[2] = 4835703278458516698824704;
    return ret; 
}

function get_vesta_base(n, k) {
    return get_pallas_scalar(n, k);
}

function get_vesta_scalar(n, k) {
    return get_pallas_base(n, k);
}
