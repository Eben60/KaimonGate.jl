using KaimonGate
using Documenter

DocMeta.setdocmeta!(KaimonGate, :DocTestSetup, :(using KaimonGate); recursive=true)

makedocs(;
    modules=[KaimonGate],
    authors="Eben60",
    sitename="KaimonGate.jl",
    format=Documenter.HTML(;
        edit_link="main",
        assets=String[],
    ),
    pages=[
        "Home" => "index.md",
    ],
)
