% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/get_contrasts.R
\name{get_contrasts.stanreg}
\alias{get_contrasts.stanreg}
\title{Compute estimated contrasts from models.}
\usage{
\method{get_contrasts}{stanreg}(fit, formula = NULL, CI = 90,
  ROPE_bounds = NULL, overlap = FALSE, ...)
}
\arguments{
\item{fit}{A Bayesian model.}

\item{formula}{A character vector (formula like format, i.e., including
interactions or nesting terms) specifying the names of the predictors over which EMMs are desired.}

\item{CI}{Determine the confidence or credible interval bounds.}

\item{ROPE_bounds}{Optional bounds of the ROPE for Bayesian models.}

\item{overlap}{Set to TRUE to add Overlap index (for Bayesian models).}

\item{...}{Arguments passed to or from other methods.}
}
\description{
Compute estimated contrasts from models.
}
