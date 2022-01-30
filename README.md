# Zig-WASM-Freestanding

- [Zig](https://ziglang.org/documentation/master/#WebAssembly)
- [MDN](https://developer.mozilla.org/ko/docs/Web/JavaScript/Reference/Global_Objects/WebAssembly/instantiate)

## Run
```shell
zig build && node src/main.js
```

Be aware of `std.zig.CrossTarget.parse(.{.arch_os_abi = "wasm32-freestanding"})` in `build.zig`.

## Further reading
- [WebAssembly.instantiateStreaming()](https://developer.mozilla.org/ko/docs/Web/JavaScript/Reference/Global_Objects/WebAssembly/instantiateStreaming)
- [Loading WebAssembly modules efficiently](https://developers.google.com/web/updates/2018/04/loading-wasm)
- [Zig's WASI support](https://ziglang.org/documentation/master/#toc-WASI)
- [With Web Worker](https://developer.mozilla.org/ko/docs/Web/JavaScript/Reference/Global_Objects/WebAssembly/instantiate#second_overload_example)
