% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/isi98.R
\name{isi98}
\alias{isi98}
\title{Compute best ranked matrixed based on original I&SI method}
\usage{
isi98(m, nTries = 100, random = FALSE)
}
\arguments{
\item{m}{A  win-loss matrix}

\item{nTries}{Number of tries to find best order}

\item{random}{Whether to randomize initial matrix order}
}
\value{
A matrix with best ranking of I and SI plus the
correlation (rs) between found ranking and David's Scores
}
\description{
Compute best ranked matrixed based on original I&SI method
}
\section{Further details}{

Code based on algorithm described by de Vries, H. 1998. Finding a
dominance order most consistent with a linear hierarchy:
a new procedure and review. Animal Behaviour, 55, 827-843.
The code is written in R and is fairly slow. It will be replaced
by a function written in C++ soon.
The number of iterations should be very high and/or the function
should be run several times to detect the optimal matrix or matrices.
It may take several runs to find a matrix with the lowest SI,
especially for very large matrices. The function will stop once it
finds a matrix with an I or SI that it can no longer improve upon.
The order of this matrix will be dependent upon the input name order
of the original matrix. To find further solutions, try using
\code{random==TRUE} to shuffle the name order of the initial
matrix. For solutions with identical I and SI, better fits
have a higher value of rs.
See \code{\link{isi13}}: for further info.
}
\examples{
isi98(mouse,nTries=50)
isi98(people, random=TRUE)
}

