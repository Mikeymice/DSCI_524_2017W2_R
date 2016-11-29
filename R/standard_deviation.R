#' standard_deviation
#'
#' @param x 
#'
#' @return
#' @export
#'
#' @examples

standard_deviation <- function(x) {
  n <- length(x)
  mean = sum(x) / n
  ssq <- sum((x-mean)^2)
  stddev = sqrt(ssq/n)
  return(stddev)
}



#' standarderror
#'
#' @param x 
#'
#' @return
#' @export
#'
#' @examples
standarderror <- function(x) {
  standarddeviation(x)/sqrt(length(x))
  }