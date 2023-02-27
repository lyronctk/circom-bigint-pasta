/*
 * Converts any sized number into its representation usig k registers, each of 
 * size n-bits. Output to console in little-endian (least significant n bits 
 * first). 
 */

const n: number = 86;
const k: number = 3;

function splitToRegisters(binaryRepr: string, n: number, k: number): string[] {
  let remaining: string = binaryRepr;
  let registers: string[] = Array();
  for (let i = 0; i < k; i++) {
    registers.push(BigInt("0b" + remaining.slice(-1 * n)).toString(10));
    remaining = remaining.slice(0, -1 * n);
  }
  return registers;
}

function main(num: string, n: number, k: number) {
  console.log("== Parameters");
  console.log(`- num: ${num}`);
  console.log(`- n: ${n}`);
  console.log(`- k: ${k}`);
  console.log("==\n");

  console.log("== Converting to binary & splitting");
  const binaryRepr = BigInt(num).toString(2);
  console.log(`- binary representation: ${binaryRepr}`);
  const canFit: boolean = binaryRepr.length < n * k;
  console.log(`- fits? ${canFit}`);
  if (!canFit) {
    throw Error(`Input number cannot fit in ${k} registers of size ${n} bits`);
  }
  console.log("- splitting into registers and converting to decimal")
  const splitRepr = splitToRegisters(binaryRepr, n, k);
  console.log("==\n");

  console.log("== Done");
  console.log(`- result: [${splitRepr}]`);
  console.log("==")
}

main(process.argv.slice(2)[0], n, k);
