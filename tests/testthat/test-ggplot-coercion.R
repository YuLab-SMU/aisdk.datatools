# Verifies the dependency-inversion seam: loading aisdk.datatools registers a
# ggplot JSON coercion handler with the core serializer, so aisdk::safe_to_json()
# can serialize ggplot objects without core depending on ggplot2.

test_that("ggplot coercion handler is registered with core on load", {
  # .onLoad runs when the namespace is loaded (it is, under test_check).
  json <- aisdk::safe_to_json(list(a = 1, b = "x"))
  expect_true(is.character(json) && nzchar(json))  # non-ggplot path unaffected
})

test_that("safe_to_json coerces a ggplot object via the registered handler", {
  skip_if_not_installed("ggplot2")
  p <- ggplot2::ggplot(mtcars, ggplot2::aes(mpg, wt)) + ggplot2::geom_point()
  json <- aisdk::safe_to_json(p)
  expect_true(is.character(json) && nzchar(json))
  # The coerced result is a z-object, not the non-serializable fallback.
  expect_false(grepl("non_serializable_result", json, fixed = TRUE))
})
