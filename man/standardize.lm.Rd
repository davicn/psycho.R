% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/standardize.R
\name{standardize.lm}
\alias{standardize.lm}
\title{Standardize Coefficients.}
\usage{
\method{standardize}{lm}(x, method = "refit", partial_sd = FALSE,
  preserve_factors = TRUE, ...)
}
\arguments{
\item{x}{A linear model.}

\item{method}{The standardization method. Can be "refit" (will entirely refit the model based on standardized data. Can take some time) or "posthoc".}

\item{partial_sd}{Logical, if set to TRUE, model coefficients are multiplied by partial SD, otherwise they are multiplied by the ratio of the standard deviations of the independent variable and dependent variable.}

\item{preserve_factors}{Standardize factors-related coefs only by the dependent variable (i.e., do not standardize the dummies generated by factors).}

\item{...}{Arguments passed to or from other methods.}
}
\description{
Compute standardized coefficients.
}
\examples{
\dontrun{
library(psycho)

df <- mtcars \%>\%
  mutate(cyl = as.factor(cyl))

fit <- lm(wt ~ mpg * cyl, data = df)
fit <- lmerTest::lmer(wt ~ mpg * cyl + (1 | gear), data = df)

summary(fit)
standardize(fit)
}

}
\author{
Kamil Barton
}
