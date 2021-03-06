% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/interpret_lavaan.R
\name{interpret_lavaan.blavaan}
\alias{interpret_lavaan.blavaan}
\title{Interpret fit measures of blavaan objects}
\usage{
\method{interpret_lavaan}{blavaan}(fit, indices = c("BIC", "DIC", "WAIC",
  "LOOIC"), ...)
}
\arguments{
\item{fit}{lavaan or blavaan object.}

\item{indices}{Vector of strings indicating which indices to report. Only works for bayesian objects for now.}

\item{...}{Arguments passed to or from other methods.}
}
\description{
Interpret fit measures of blavaan objects
}
