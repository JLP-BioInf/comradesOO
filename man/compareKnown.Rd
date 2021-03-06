% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/comradesClusteredDataSetMethodsAndHelpers.R
\name{compareKnown}
\alias{compareKnown}
\title{compareKnown}
\usage{
compareKnown(trimmedClusters, knownMat, rna, type, ...)
}
\arguments{
\item{trimmedClusters}{a \code{comradesClusteredDataSet} object, 
run \code{trimClusters()} on the  \code{comradesClusteredDataSet} first}

\item{knownMat}{Matrix - A marix(ncol = lengthRNA,nrow = lengthRNA) where a
value in matrix[x,y] would indicate a known interation between nucleotide 
x and nucleotide y}

\item{type}{string - the type of clusters you would like to compare you can find 
available types by just running the objects name}
}
\value{
Returns a \code{comradesClusteredDataSet} object

The 3 attributes matrixList, clusterTableList and clusterGrangesList 
will gain the \code{types} "known" and "novel" and "knownAndNovel"
}
\description{
This method compares the current object to a know structure.run 
\code{trimClusters()} on the  \code{comradesClusteredDataSet} first
}
\section{Slots}{

\describe{
\item{\code{rna}}{string - a single RNA to analyse - must be present in \code{rnas(cdsObject)}}
}}

