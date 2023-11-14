# Icarus Verilog Test-bench

## Dependencies

- [Icarus Verilog](https://steveicarus.github.io/iverilog/)
- [GTKWave](https://github.com/gtkwave/gtkwave) (Optional)

## Usage

```shell
make # Build all

make test # Build all and run test-bench

# Build all, run test-bench, and open test waveform in GTKWave
make test && gtkwave ./wave.vcd

make clean # Clean all build artifacts
```
