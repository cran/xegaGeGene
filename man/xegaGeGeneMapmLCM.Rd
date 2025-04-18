% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/xegaGeDecode.R
\name{xegaGeGeneMapmLCM}
\alias{xegaGeGeneMapmLCM}
\title{Map the bit strings of a binary gene to integer parameters in the interval
\code{1} to \code{numbers::mLCM(x) < 2^k}.}
\usage{
xegaGeGeneMapmLCM(gene, lF)
}
\arguments{
\item{gene}{Binary gene (the genotype).}

\item{lF}{Local configuration.}
}
\value{
Integer vector.
}
\description{
\code{xegaGeGeneMapmLCM()} 
             maps the bit strings of a binary string 
             to integers in the interval \code{1} to 
             \code{lF$CodonPrecision()}. 
             Bit vectors are mapped into equispaced numbers in the interval.
}
\details{
Using the interval of \code{1} to \code{numbers::mLCM(1:m)}
         provides the least common multiple of all prime factors 
         of the numbers in the interval \code{1:m}.
         This corresponds to the bucket rule of Keijzer et al. (2002).
         For 16-bit precision, the highest number of rules
         for the same non-terminal symbols is 12.
         For 8-bit precision, this reduces to 6.
         With 64-bit integer arithmetic, the bucket rule works up to 
         42 rules starting with the same non-terminal.
}
\examples{
gene<-xegaGeInitGene(lFxegaGeGene)
xegaGeGeneMapmLCM(gene$gene1, lFxegaGeGene)

}
\references{
Keijzer, M., O'Neill, M., Ryan, C. and Cattolico, M. (2002)
         Grammatical Evolution Rules: The Mod and the Bucket Rule,
         pp. 123-130. 
         In: Foster, J. A., Lutton, E., Miller, J., Ryan, C. and 
             Tettamanzi, A. (Eds.): Genetic Programming.
         Lecture Notes in Computer Science, Vol.2278, 
             Springer, Heidelberg. 
         <doi:10.1007/3-540-45984-7_12>
}
\seealso{
Other Decoder: 
\code{\link{xegaGeDecodeGene}()},
\code{\link{xegaGeDecodeGeneDT}()},
\code{\link{xegaGeGeneMapMod}()}
}
\concept{Decoder}
