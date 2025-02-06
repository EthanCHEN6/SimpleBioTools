#' Count Non-Missing Observations
#'
#' This function counts the number of non-missing values in a numeric vector.
#'
#' @param data A numeric vector.
#' @return The number of non-missing values.
#' @examples
#' count_observations(c(1, 2, NA, 4, NA))
#' @export
count_observations <- function(data) {
  if (!is.numeric(data)) {
    stop("Input must be a numeric vector.")
  }
  return(sum(!is.na(data)))
}
