# aisdk.datatools

R-native data-science agent tools for the
[aisdk](https://github.com/YuLab-SMU/aisdk) toolkit.

Provides tools that `aisdk` agents can call to inspect data and produce
artifacts:

- a structured **ggplot2** chart schema and renderer,
- a **knitr**-based reporting engine,
- autonomous data-science pipelines,
- a safe R code **sandbox**,
- R environment/object **introspection** tools.

## Installation

```r
# install.packages("remotes")
remotes::install_github("YuLab-SMU/aisdk")            # core
remotes::install_github("YuLab-SMU/aisdk.datatools")  # this package
```

`ggplot2`, `knitr`, and `rmarkdown` are optional (`Suggests`); install them for
the corresponding features.
