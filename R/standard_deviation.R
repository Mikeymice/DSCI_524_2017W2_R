#' standard_deviation
#'
#' @param x a list of numbers
#'
#' @return stddev a float
#' @export
#'
#' @examples 
#' x <-c(1,2,3,4) 
#' standard_deviation(x)

standard_deviation <- function(x) {
  n <- length(x)
  mean = sum(x) / n
  ssq <- sum((x-mean)^2)
  stddev = sqrt(ssq/n)
  return(stddev)
}



#' standarderror
#'
#' @param x a list of numbers
#'
#' @return se a float
#' @export
#'
#' @examples 
#' x <-c(1,2,3,4) 
#' standarderror(x)
#' 
#' 
standarderror <- function(x) {
  se <- standard_deviation(x)/sqrt(length(x))
  return(se)
  }