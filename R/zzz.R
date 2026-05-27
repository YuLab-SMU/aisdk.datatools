# On load, teach the core aisdk JSON serializer how to coerce ggplot objects.
# This is the dependency-inversion seam: aisdk core exposes
# register_json_coercion(); aisdk.datatools registers the ggplot handler here so
# core never hard-depends on ggplot2/ggplot_schema.
.onLoad <- function(libname, pkgname) {
  if (!requireNamespace("aisdk", quietly = TRUE)) {
    return(invisible())
  }
  aisdk::register_json_coercion(
    predicate = function(x) inherits(x, "ggplot") || inherits(x, "gg"),
    handler = function(x) ggplot_to_z_object(x, include_data = TRUE, include_render_hints = TRUE),
    id = "aisdk.datatools::ggplot"
  )
  invisible()
}
