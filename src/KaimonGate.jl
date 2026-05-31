"""
    Package KaimonGate v$(pkgversion(KaimonGate))

This is the Gate counterpart for Kaimon.jl MCP server for Julia — Thin eval gate for the user's REPL

Runs inside the user's Julia session. Binds a ZMQ REP socket on an IPC
endpoint so the persistent TUI server can send eval requests without living
inside this process.

See docs for public functions serve, stop, restart, status

$(isnothing(get(ENV, "CI", nothing)) ? ("\n" * "Package local path: " * pathof(KaimonGate)) : "")

# Example
```julia
using KaimonGate
KaimonGate.serve()
```
"""
module KaimonGate

using Dates
using REPL
using Serialization
using ZMQ

include("gate.jl")

@static VERSION ≥ v"1.11.0" && include("public.julia")

end
