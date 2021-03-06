% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/isi13.R
\name{isi13}
\alias{isi13}
\title{Compute best ranked matrixed based on new I&SI method}
\usage{
isi13(m, p = c(1, 0, 0, 0), a_max = 50, nTries = 30, p2 = 0.5,
  random = FALSE)
}
\arguments{
\item{m}{A win-loss matrix}

\item{p}{A vector of probabilities for each of 4 methods}

\item{a_max}{Number of tries}

\item{nTries}{Number of iterations}

\item{p2}{probability for last method}

\item{random}{Whether to randomize initial matrix order}
}
\value{
A computed ranked matrix best_matrix best_ranking I and SI,
and rs - the Spearman correlation between best order and David's
Scores.
}
\description{
Compute best ranked matrixed based on new I&SI method
}
\section{Further details}{

Code based on algorithm described by Schmid & de Vries 2013,
Finding a dominance order most consistent with a linear hierarchy:
An improved algorithm for the I&SI method, Animal Behaviour
86:1097-1105. This first implementation of this algorithm is not
very fast. The code is written in R and is fairly slow.
It will be replaced by a function written in C++ soon.
The number of tries should be very high and/or the function
should be run several times to detect the optimal matrix or matrices.
It may take several runs to find the matrix with the lowest SI,
especially for very large matrices. For small matrices it may be more
efficient to use the older algorithm. See \code{\link{isi98}}:
for further info. If the algorithm can no longer improve on reducing
the I and SI it will return the order found. For some sparse matrices
many orders may have an equal I and SI. The best matrix found here will
therefore be dependent upon the initial order of individuals in the
matrix. By using \code{random=TRUE} it is possible to randomize
the initial order of individuals in the matrix. This can be helpful in
identifying other potentially better fits. For solutions with identical
 I and SI, better fits have a higher value of rs.
}
\examples{
isi13(people,nTries=10)
}

