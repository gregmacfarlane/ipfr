% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/ipu.R
\name{check_tables}
\alias{check_tables}
\title{Check seed and target tables for completeness}
\usage{
check_tables(primary_seed, primary_targets, secondary_seed = NULL,
  secondary_targets = NULL)
}
\arguments{
\item{primary_seed}{In population synthesis or household survey expansion, 
this would be the household seed table (each record would represent a 
household). It could also be a trip table, where each row represents an 
origin-destination pair. Must contain a \code{pid} ("primary ID") field
that is unique for each row. Must also contain a geography field that
starts with "geo_".}

\item{primary_targets}{A \code{named list} of data frames.  Each name in the 
list defines a marginal dimension and must match a column from the 
\code{primary_seed} table. The data frame associated with each named list
element must contain a geography field (starts with "geo_"). Each row in
the target table defines a new geography (these could be TAZs, tracts,
clusters, etc.). The other column names define the marginal categories that
targets are provided for. The vignette provides more detail.}

\item{secondary_seed}{Most commonly, if the primary_seed describes households, the 
secondary seed table would describe a unique person with each row. Must
also contain the \code{pid} column that links each person to their 
respective household in \code{primary_seed}. Must not contain any geography
fields (starting with "geo_").}

\item{secondary_targets}{Same format as \code{primary_targets}, but they constrain 
the \code{secondary_seed} table.}
}
\description{
Given seed and targets, checks to make sure that at least one
  observation of each marginal category exists in the seed table.  Otherwise,
  ipf/ipu would produce wrong answers without throwing errors.
}
