#' standard_deviation
#'
#' @param x a list of numbers
#'
#' @return float
#' @export
#'
#' @examples
#' x <-c(1,2,3,4)
#' standard_deviation(x)


standard_deviation <- function(x) {
  if(is.null(x)){
    stop("Error: Zero division")
  }
  if(!is.vector(x)){
    stop("Error: Type of x must be vector")
  }
  if(!is.integer(x) & !is.double(x)){
    stop("Error: x must be a vector of type integer or double")
  }

  tryCatch({
    n <- length(x)
    mean = sum(x) / n
    ssq <- sum((x-mean)^2)
    stddev = sqrt(ssq/n)
    return(stddev)}, error=function(e) {
      stop("Error: Something unknown went wrong in standard_deviation")})
}


#' standarderror
#'
#' @param x a list of numbers
#'
#' @return float
#' @export
#'
#' @examples
#' x <-c(1,2,3,4)
#' standarderror(x)
#'
#'
standarderror <- function(x) {
  if(is.null(x)){
    stop("Error: Zero division")
  }
  if(!is.vector(x)){
    stop("Error: Type of x must be vector")
  }
  if(!is.integer(x) & !is.double(x)){
    stop("Error: x must be a vector of type integer or double")
  }

  tryCatch({
    se <- standard_deviation(x)/sqrt(length(x))
    return(se)}, error=function(e) {
      stop("Error: Something unknown went wrong in standard_error")})
  }
