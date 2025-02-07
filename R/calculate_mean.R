#' Calculate Mean of a Numeric Vector
#'
#' This function calculates the mean of a numeric vector. Simon edited this.
#'
#' @param data A numeric vector.
#' @return The mean of the input data.
#' @examples
#' calculate_mean(c(1, 2, 3, 4, 5))
#' @export
calculate_mean <- function(data) {
  if (!is.numeric(data)) {
    stop("Input must be a numeric vector.")
  }
  return(mean(data, na.rm = TRUE))
}



