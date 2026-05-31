"""
    Package KaimonGate v$(pkgversion(KaimonGate))

This is the Gate part of Kaimon.jl MCP server for Julia — Thin eval gate for the user's REPL

Runs inside the user's Julia session. Binds a ZMQ REP socket on an IPC
endpoint so the persistent TUI server can send eval requests without living
inside this process.

$(isnothing(get(ENV, "CI", nothing)) ? ("\n" * "Package local path: " * pathof(KaimonGate)) : "") 
"""
module KaimonGate

using Dates
using REPL
using Serialization
using ZMQ

include("gate.jl")

@static VERSION ≥ v"1.11.0" && include("public.julia")

end
