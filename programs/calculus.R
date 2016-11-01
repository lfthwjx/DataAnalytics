## formula argument :
dx2x <- deriv(~ x^2, "x") ; dx2x
## Not run: expression({
.value <- x^2
.grad <- array(0, c(length(.value), 1), list(NULL, c("x")))
.grad[, "x"] <- 2 * x
attr(.value, "gradient") <- .grad
.value
})
## End(Not run)
mode(dx2x)
x <- -1:2
eval(dx2x)

library(mosaic)
help(package = "mosaic")
