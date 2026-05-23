# Operador interno para valores por defecto ante NULL.
`%||%` <- function(x, y) {
  if (is.null(x)) y else x
}