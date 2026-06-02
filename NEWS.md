# aisdk.datatools 0.1.0

* First release. Adds heavy-dependency charting and reporting tools for
  the `aisdk` toolkit: a structured `ggplot2` chart schema and renderer,
  a `knitr`-based AI reporting engine and artifact generation. Registers
  a `ggplot` JSON coercion handler with the core serializer on load so
  that `aisdk` stays free of `ggplot2`/`knitr` dependencies unless this
  package is used.
