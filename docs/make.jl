using Documenter, IndexedTables, JuliaDB

@info "makedocs"
makedocs(
    sitename = "JLdb",
    format = Documenter.HTML(prettyurls = get(ENV, "CI", nothing) == "true"),
    modules = [JuliaDB],
    pages = [
        "index.md",
        "basics.md",
        "operations.md",
        "joins.md",
        "onlinestats.md",
        "plotting.md",
        "missing_values.md",
        "out_of_core.md",
        "ml.md",
        "tutorial.md",
        "api.md",
    ],
)

@info "deploydocs"
deploydocs(
    repo = "github.com/Heptazhou/JLdb.jl.git",
    devbranch = "master",
    devurl = "latest",
    forcepush = true,
)
