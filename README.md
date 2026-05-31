# KaimonGate.jl

[![Build Status](https://github.com/Eben60/KaimonGate.jl/actions/workflows/CI.yml/badge.svg?branch=main)](https://github.com/Eben60/KaimonGate.jl/actions/workflows/CI.yml?query=branch%3Amain)
[![Aqua](https://raw.githubusercontent.com/JuliaTesting/Aqua.jl/master/badge.svg)](https://github.com/JuliaTesting/Aqua.jl)
[![Julia 1.10+](https://img.shields.io/badge/julia-1.12%2B-blue)](https://julialang.org)
[![License: MIT](https://img.shields.io/badge/license-MIT-green.svg)](LICENSE)
[![Stage: Experimental](https://img.shields.io/badge/status-experimental-orange.svg)](https://github.com/Eben60/KaimonGate.jl)


`KaimonGate.jl` is based on the `Gate` module of **[Kaimon.jl](https://github.com/kahliburke/Kaimon.jl)**, created by **[Kahli Burke](https://github.com/kahliburke)**. It provides the same functionality as the original Kaimon.Gate module, while entailing only the very minimal dependencies (some stdlib packages and ZMQ.jl). 

The package is currently at experimental and not well-tested stage

## Usage

### Starting the Gate

To let the Kaimon MCP server connect to your running session, load `KaimonGate` and start serving:

```julia
using KaimonGate

# Starts the evaluation gate in a background task
KaimonGate.serve()
```


For more usage information, see [Kaimon.jl documentation](https://kahliburke.github.io/Kaimon.jl) and the docstrings:

```julia
using KaimonGate

help?> KaimonGate
search: KaimonGate

  Package KaimonGate v0.0.1

  This is the Gate counterpart for Kaimon.jl MCP server for Julia — Thin eval
  gate for the user's REPL...
```
