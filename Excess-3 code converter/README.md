# BCD to Excess-3 Code Converter using Verilog

## Overview

This project implements a BCD to Excess-3 Code Converter using
Verilog HDL.

Excess-3 is a non-weighted decimal code obtained by adding 3
(0011) to each 4-bit BCD digit.

The circuit accepts a 4-bit BCD input and produces the corresponding
4-bit Excess-3 output.

## Working Principle

The conversion is:

    Excess-3 = BCD + 0011

For example:

    Decimal = 5
    BCD     = 0101

    0101
  + 0011
  -------
    1000

Therefore:

    Excess-3 = 1000

## Inputs

| Input | Size | Description |
|-------|------|-------------|
| BCD | 4-bit | BCD input |

## Outputs

| Output | Size | Description |
|--------|------|-------------|
| Excess3 | 4-bit | Excess-3 coded output |

## Conversion Table

| Decimal | BCD  | Excess-3 |
|---------|------|----------|
| 0 | 0000 | 0011 |
| 1 | 0001 | 0100 |
| 2 | 0010 | 0101 |
| 3 | 0011 | 0110 |
| 4 | 0100 | 0111 |
| 5 | 0101 | 1000 |
| 6 | 0110 | 1001 |
| 7 | 0111 | 1010 |
| 8 | 1000 | 1011 |
| 9 | 1001 | 1100 |

Inputs from 1010 to 1111 are invalid BCD inputs.

## Files

- `excess3_converter.v` - Main Verilog design
- `excess3_converter_tb.v` - Testbench
- `output.txt` - Simulation output
- `README.md` - Project documentation

## Tools Used

- Verilog HDL
- Icarus Verilog
- Xilinx Vivado
- ModelSim

## How to Run

### Compile

```bash
iverilog -o excess3 excess3_converter.v excess3_converter_tb.v