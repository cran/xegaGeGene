% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/xegaGeCodonPrecision.R
\name{CodonPrecisionWithThreshold}
\alias{CodonPrecisionWithThreshold}
\title{Precision of a codon which has a choice bias below a probability threshold.}
\usage{
CodonPrecisionWithThreshold(LHS, pCrit)
}
\arguments{
\item{LHS}{The left-hand side of a grammar object \code{G}.}

\item{pCrit}{Threshold for the choice bias for single non-terminal.}
}
\value{
The precision of a codon which guarantees that the choice bias 
        for all nonterminals is below a probability threshold of
        \code{PCrit}.
}
\description{
The choice bias is the sum of the absolute values of the 
              difference between a k equally probable choices and the 
              probability distribution of the modulo choice rule.
}
\examples{
NT<-sample(5, 50, replace=TRUE)
CodonPrecisionWithThreshold(NT, 0.1)
CodonPrecisionWithThreshold(NT, 0.01)
}
\seealso{
Other Precision: 
\code{\link{MinCodonPrecision}()},
\code{\link{mLCMGCodonPrecision}()}
}
\concept{Precision}
