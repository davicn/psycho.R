#' Overlap of Two Empirical Distributions.
#'
#' A method to calculate the overlap coefficient of two kernel density estimates (a measure of similarity between two samples).
#'
#' @param x A vector of values from a probability distribution (e.g., posterior probabilities from MCMC sampling).
#' @param y Scalar between 0 and 1, indicating the mass within the credible interval that is to be estimated.
#' @param method Method of AUC computation. Can be "trapezoid" (default), "step" or "spline".
#'
#' @examples
#' library(psycho)
#' 
#' x <- rnorm(100, 1, 0.5)
#' y <- rnorm(100, 0, 1)
#' overlap(x, y)
#' @author S. Venne
#'
#' @importFrom stats density
#' @importFrom DescTools AUC
#' @export
overlap <- function(x, y, method = "trapezoid") {
  # define limits of a common grid, adding a buffer so that tails aren't cut off
  lower <- min(c(x, y)) - 1
  upper <- max(c(x, y)) + 1

  # generate kernel densities
  da <- stats::density(x, from = lower, to = upper)
  db <- stats::density(y, from = lower, to = upper)
  d <- data.frame(x = da$x, a = da$y, b = db$y)

  # calculate intersection densities
  d$w <- pmin(d$a, d$b)

  # integrate areas under curves
  total <- DescTools::AUC(d$x, d$a, method = method) + DescTools::AUC(d$x, d$b, method = method)
  intersection <- DescTools::AUC(d$x, d$w, method = method)

  # compute overlap coefficient
  overlap <- 2 * intersection / total
  return(overlap)
}
