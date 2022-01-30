const fs = require('fs');

const source = fs.readFileSync("./zig-out/lib/zig-wasm-freestanding.wasm");
const typedArray = new Uint8Array(source);

(async () => {
    const wasm = await WebAssembly.instantiate(
      typedArray, 
      {
        env: {
          print: (result) => { console.log(`The result is ${result}.\n`);}
        }
      }
    )
    
    const { add } = wasm.instance.exports;

    add(1, 2);
})();
