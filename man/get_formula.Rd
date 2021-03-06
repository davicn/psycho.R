% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/get_formula.R
\name{get_formula}
\alias{get_formula}
\title{Get formula of models.}
\usage{
get_formula(x, ...)
}
\arguments{
\item{x}{Object.}

\item{...}{Arguments passed to or from other methods.}
}
\description{
Get formula of models. Implemented for:
\itemize{
 \item{analyze.merModLmerTest}
 \item{analyze.glmerMod}
 \item{analyze.lm}
 \item{analyze.glm}
 \item{analyze.stanreg}
 }
}
\examples{
library(psycho)
library(lme4)

fit <- lme4::glmer(vs ~ wt + (1 | gear), data = mtcars, family = "binomial")
fit <- lm(hp ~ wt, data = mtcars)

get_formula(fit)
}
\author{
\href{https://dominiquemakowski.github.io/}{Dominique Makowski}
}
