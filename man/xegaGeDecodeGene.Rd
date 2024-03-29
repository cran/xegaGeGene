% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/xegaGeDecode.R
\name{xegaGeDecodeGene}
\alias{xegaGeDecodeGene}
\title{Decode a gene for a context free grammar.}
\usage{
xegaGeDecodeGene(gene, lF)
}
\arguments{
\item{gene}{Binary gene.}

\item{lF}{Local configuration of the genetic algorithm.}
}
\value{
Decoded gene.
}
\description{
\code{xegaGeDecodeGene()} decodes a binary gene with 
             a context-free grammar.
}
\details{
The codons (k-bit sequences) of the binary gene are determining
         the choices of non-terminal symbols of a depth-first left-to-right
         tree traversal. Decoding works in 2 steps:
         \enumerate{
         \item From the binary gene and a grammar a potentially 
               incomplete derivation tree is built.
         \item The leaves of the derivation tree are extracted.
         }

         It is not guaranteed that a complete derivation trees is returned.
}
\examples{
lFxegaGeGene$GeneMap<-xegaGeGeneMapFactory("Mod")
gene<-xegaGeInitGene(lFxegaGeGene)
xegaGeDecodeGene(gene, lFxegaGeGene)

}
\seealso{
Other Decoder: 
\code{\link{xegaGeGeneMapMod}()},
\code{\link{xegaGeGeneMapmLCM}()}
}
\concept{Decoder}
