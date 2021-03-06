% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/get_graph.R
\name{get_graph.psychobject_correlation}
\alias{get_graph.psychobject_correlation}
\title{Get graph data from correlation.}
\usage{
\method{get_graph}{psychobject_correlation}(fit, ...)
}
\arguments{
\item{fit}{Object from psycho::correlation.}

\item{...}{Arguments passed to or from other methods.}
}
\value{
A list containing nodes and edges data to be used by `igraph::graph_from_data_frame()`.
}
\description{
Get graph data from correlation.
}
\author{
\href{https://dominiquemakowski.github.io/}{Dominique Makowski}
}
