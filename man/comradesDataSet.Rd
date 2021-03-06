% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/comradesDataSet.R
\docType{class}
\name{comradesDataSet-class}
\alias{comradesDataSet-class}
\alias{comradesDataSet}
\title{comradesDataSet}
\usage{
comradesDataSet(rnas, rnaSize, sampleTable)
}
\arguments{
\item{rnas}{vector - The names of the RNA interest, these must be displayed
the same way as in the input Hyb Files.}

\item{rnaSize}{named list - The sizes (nt) of the RNAs of interest, the list
elements must have same names as the \code{rnas} vector and each each contain 
one numeric value.}

\item{sampletable}{string - The address of the sample table, the sample table
must have 4 columns, fileName (the full path and file name of the input 
hyb file for each sample ), group ("s" - sample or "c" - control), 
sample (1,2,3, etc), sampleName (must be unique).}
}
\value{
A comradesDataSet object.
}
\description{
\code{comradesDataSet} objects are used to store the input meta-data, data and
create a framework for the storage of results. Whilst creating the object, 
the original hyb files are also filtered for the RNA of interest.
}
\section{Slots}{

\describe{
\item{\code{sampleTable}}{Table File Name -  Column names - fileName, group (s or c),
sample (1,2,3, etc), sampleName (must be unique)}

\item{\code{rnas}}{Vector - A vecotor of RNA names to analyse. (must be in the Hyb
input files)}

\item{\code{group}}{This is made from the a sample table}

\item{\code{matrixList}}{List - Follows the pattern for list slots of comradesDataSet
objects, \code{matrixList(cds)[[rna]][[type]][[sample]]}. Contains a set
of contact matrices, each cell contains the number of duplexes identified 
for position x,y.}

\item{\code{hybFiles}}{List - Follows the pattern for list slots of comradesDataSet
objects, \code{hybFiles(cds)[[rna]][[type]][[sample]]}. Contains a set of 
tables, these are the original Hyb files that were read in.}

\item{\code{sampleTable}}{table - Column names; fileName, group (s or c),
sample (1,2,3, etc), sampleName (must be unique)}

\item{\code{rnas}}{vector - A vector of RNA names to analyse}

\item{\code{group}}{list - This is made from the a sample table during object 
creation, it is a list with two vector elements ("c","s") containing the 
indexes of the sampleTable that have "c" or "s" in the group column.}

\item{\code{matrixList}}{List - Follows the pattern for list slots of comradesDataSet
objects, \code{matrixList(cds)[[rna]][[type]][[sample]]}. Contains a set
of contact matrices, each cell contains the number of duplexes identified 
for position x,y.}

\item{\code{hybFiles}}{List - Follows the pattern for list slots of comradesDataSet
objects, \code{hybFiles(cds)[[rna]][[type]][[sample]]}. Contains a set of 
tables, these are the original Hyb files that were read in.}
}}

\examples{


}
\references{
See \url{https://github.com/gkudla/hyb} for hyb
}
