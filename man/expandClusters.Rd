% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/utils.R
\name{expandClusters}
\alias{expandClusters}
\title{Expands soup counts calculated at the cluster level to the cell level}
\usage{
expandClusters(
  clustSoupCnts,
  cellObsCnts,
  clusters,
  cellWeights,
  verbose = 1,
  nCores = getOption("mc.cores", 1),
  ...
)
}
\arguments{
\item{clustSoupCnts}{Matrix of genes (rows) by clusters (columns) where counts are number of soup counts for that gene/cluster combination.}

\item{cellObsCnts}{Matrix of genes (rows) by cells (columns) giving the observed counts}

\item{clusters}{Mapping from cells to clusters.}

\item{cellWeights}{Weighting to give to each cell when distributing counts.  This would usually be set to the number of expected soup counts for each cell.}

\item{verbose}{Integer giving level of verbosity.  0 = silence, 1 = Basic information, 2 = Very chatty, 3 = Debug.}

\item{nCores}{Number of cores to use.  Defaults to all cores.}

\item{...}{Passed to mclapply}
}
\value{
A matrix of genes (rows) by cells (columns) giving the number of soup counts estimated for each cell.  Non-integer values possible.
}
\description{
Given a clustering of cells and soup counts calculated for each of those clusters, determines a most likely allocation of soup counts at the cell level.
}
