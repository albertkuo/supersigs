% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/make_matrix.R
\name{make_matrix}
\alias{make_matrix}
\title{Function to transform mutations into "matrix" format}
\usage{
make_matrix(data, genome = "hg19")
}
\arguments{
\item{data}{a data frame of mutations in VCF format (see vignette for details)}

\item{genome}{the reference genome used ("hg19" or "hg38")}
}
\value{
\code{make_matrix} returns a data frame of mutations,
one row per sample
}
\description{
Transform a data frame of mutations in long format into 
a data frame of trinucleotide mutations with flanking bases
in a wide matrix format.
}
\examples{

head(example_dt) # use example data from package
input_dt <- make_matrix(example_dt) # convert to correct format
head(input_dt)

}
