% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/refdata.R
\name{refdata}
\alias{refdata}
\title{Create a reference grid.}
\usage{
refdata(df, target = "all", length.out = 10, factors = "reference",
  numerics = "mean", na.rm = TRUE)
}
\arguments{
\item{df}{The dataframe.}

\item{target}{String or list of strings to indicate target columns. Can be "all".}

\item{length.out}{Length of numeric target variables.}

\item{factors}{Type of summary for factors. Can be "combination" or "reference".}

\item{numerics}{Type of summary for numerics Can be "combination", any function ("mean", "median", ...) or a value.}

\item{na.rm}{Remove NaNs.}
}
\description{
Create a reference grid.
}
\examples{
library(psycho)

df <- psycho::affective
newdata <- refdata(df, target = "Sex")
newdata <- refdata(df, target = "Sex", factors = "combinations")
newdata <- refdata(df, target = c("Sex", "Salary", "Tolerating"), length.out = 3)
newdata <- refdata(df, target = c("Sex", "Salary", "Tolerating"), numerics = 0)
}
\author{
\href{https://dominiquemakowski.github.io/}{Dominique Makowski}
}
