using PostProcessYelmo
using Documenter

DocMeta.setdocmeta!(PostProcessYelmo, :DocTestSetup, :(using PostProcessYelmo); recursive=true)

makedocs(;
    modules=[PostProcessYelmo],
    authors="Jan Swierczek-Jereczek",
    repo="https://github.com/JanJereczek/PostProcessYelmo.jl/blob/{commit}{path}#{line}",
    sitename="PostProcessYelmo.jl",
    format=Documenter.HTML(;
        prettyurls=get(ENV, "CI", "false") == "true",
        canonical="https://JanJereczek.github.io/PostProcessYelmo.jl",
        assets=String[],
    ),
    pages=[
        "Home" => "index.md",
    ],
)

deploydocs(;
    repo="github.com/JanJereczek/PostProcessYelmo.jl",
    devbranch="main",
)
