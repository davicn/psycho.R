% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/bayes_cor.R
\name{reorder_matrix}
\alias{reorder_matrix}
\title{Reorder square matrix.}
\usage{
reorder_matrix(mat, dmat = NULL)
}
\arguments{
\item{mat}{A square matrix.}

\item{dmat}{A square matrix with values to use as distance.}
}
\description{
Reorder square matrix.
}
\examples{
library(psycho)

r <- correlation(iris)
r <- r$values$r
r <- reorder_matrix(r)
}
