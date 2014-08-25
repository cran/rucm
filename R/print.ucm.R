#'Print ucm Object
#'@method print ucm
#'@param x ucm object
#'@param ... Ignored.
#'@rdname print.ucm
#'
print.ucm <- function(x, ...){
  var.est <- c(x$irr.var, x$est.var.level, x$est.var.slope, x$est.var.season, x$est.var.cycle)
  cat("Call:\n")  
  print(x$call)
  cat("\nParameter estimates:\n")
  if (!is.null(x$est)) print(round(x$est,4))
  else print(x$est)
  cat("\nEstimated variance:\n")
  print(round(var.est,4), digits = 7)
  
}