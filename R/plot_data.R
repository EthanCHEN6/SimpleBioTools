#' Plot Point Data
#'
#' This function plots points for ColumnA and ColumnB with the color ColP
#'
#' @param data A Data frame
#' @param columnA Column for the X Axis
#' @param columnB  Column for the B Axis
#' @param colp Color for the points
#'
#' @return A plot
#' @import ggplot2
#' @examples
#' data = data.frame(A = rnorm(100), B = rnorm(100), C = rnorm(100))
#'
#' plotting_data(data, 'A', 'B', 'blue')
#'
#' plotting_data(data, 'B', 'A', 'black')
#' @export

plotting_data = function(data, columnA, columnB, colp = 'red'){

  A = which(colnames(data) == columnA)
  B = which(colnames(data) == columnB)

  colnames(data)[c(A,B)] = c('X.Axis', 'Y.Axis')

  plot = data |> ggplot() +
    geom_point(aes(x = X.Axis, y = Y.Axis), col = colp)

  return(plot)


}
