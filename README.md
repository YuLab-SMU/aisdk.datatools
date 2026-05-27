# aisdk.datatools

Charting and reporting tools for the
[aisdk](https://github.com/YuLab-SMU/aisdk) toolkit — the heavy-dependency
pieces that core deliberately does not ship.

- a structured **ggplot2** chart schema and renderer (`ggplot_to_z_object`, the
  `z_ggplot` schema, frontend JSON),
- a **knitr** `{ai}` reporting engine (`register_ai_engine`),
- artifact generation.

## Dependency inversion

`aisdk` core has no hard dependency on `ggplot2`/`knitr`. On load, this package
registers a ggplot JSON-coercion handler with the core serializer via
`aisdk::register_json_coercion()`, so `aisdk::safe_to_json()` can serialize
ggplot objects only when this package is installed.

> The R-code **sandbox** and **R-introspection** agent tools are *not* here —
> they have no heavy dependencies and remain in `aisdk` core, where they are used
> by sandbox mode, the multi-agent flows, and the console.

## Installation

```r
# install.packages("remotes")
remotes::install_github("YuLab-SMU/aisdk")            # core
remotes::install_github("YuLab-SMU/aisdk.datatools")  # this package
```

`ggplot2`, `knitr`, and `rmarkdown` are optional (`Suggests`); install them for
the corresponding features.
