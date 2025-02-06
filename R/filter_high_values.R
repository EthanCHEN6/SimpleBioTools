#' Filter Values Above a Threshold
#'
#' This function filters out values below a specified threshold.
#'
#' @param data A numeric vector.
#' @param threshold A numeric value as the threshold.
#' @return A numeric vector with values above the threshold.
#' @examples
#' filter_high_values(c(1, 5, 10, 15), threshold = 9)
#' @export
filter_high_values <- function(data, threshold) {
  if (!is.numeric(data) || !is.numeric(threshold)) {
    stop("Input data and threshold must be numeric.")
  }
  return(data[data > threshold])
}
