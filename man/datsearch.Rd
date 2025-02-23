\name{datsearch}
\alias{datsearch}
\title{Search Function for the Datasets}
\description{Function to search among the existing datasets.}
\usage{
datsearch(pattern, concept=TRUE, matchall=TRUE, fixed=TRUE, pkgdown=FALSE)
}
\arguments{
   \item{pattern}{character string or vector of strings specifying the search pattern(s) to search for within the datasets.}
   \item{concept}{logical indicating whether the search should be confined to the concept terms (\code{TRUE} by default) or whether a full-text search should be conducted.}
   \item{matchall}{logical indicating whether only the datasets matching all patterns (if multiple are specified) are returned (\code{TRUE} by default) or whether datasets matching any one of the patterns are returned.}
   \item{fixed}{logical indicating whether a pattern is a string to be matched as is (\code{TRUE} by default). If \code{FALSE}, a pattern is a regular expression that \code{\link{grep}} will search for. Only relevant when \code{concept=FALSE} (i.e., when doing a full-text search).}
   \item{pkgdown}{logical indicating whether the local help file or the pkgdown docs (at \url{https://wviechtb.github.io/metadat/}) should be shown for the chosen dataset (\code{FALSE} by default).}
}
\details{
   The function can be used to search all existing datasets in the \pkg{metadat} package based on their concept terms (see below) or based on a full-text search of their corresponding help files. One can also specify multiple search patterns by using a string vector as the \code{pattern} or by separating multiple patterns in a single search string with \sQuote{,}, \sQuote{;}, or \sQuote{and}. If \code{matchall=TRUE} (the default), only datasets matching all patterns are returned. If \code{matchall=FALSE}, datasets matching any one of the patterns are returned.

   If a single match is found, the corresponding help file is shown. If multiple matches are found, the user is prompted to choose one of the matching datasets of interest and the corresponding help file is then shown.

   \bold{Concept Terms}

   Each dataset is tagged with one or multiple concept terms that refer to various aspects of a dataset, such as the field/topic of research, the outcome measure used for the analysis, the model(s) used for analyzing the data, and the methods/concepts that can be illustrated with the dataset.

   \itemize{
      \item In terms of \sQuote{fields/topics}, the following tags have been used at least once: alternative medicine, attraction, cardiology, climate change, covid-19, criminology, dentistry, ecology, education, engineering, epidemiology, evolution, human factors, medicine, memory, obstetrics, oncology, persuasion, primary care, psychiatry, psychology, smoking, social work, sociology.
      \item In terms of \sQuote{outcome measures}, the following tags have been used at least once: correlation coefficients, Cronbach's alpha, hazard ratios, incidence rates, raw mean differences, odds ratios, proportions, ratios of means, raw means, risk differences, risk ratios, (semi-)partial correlations, standardized mean changes, standardized mean differences.
      \item In terms of \sQuote{models/methods/concepts}, the following tags have been used at least once: cluster-robust inference, component network meta-analysis, cumulative meta-analysis, diagnostic accuracy studies, dose response models, generalized linear models, longitudinal models, Mantel-Haenszel method, meta-regression, model checks, multilevel models, multivariate models, network meta-analysis, outliers, Peto's method, phylogeny, publication bias, reliability generalization, single-arm studies, spatial correlation.
   }
}
\author{
   Daniel Noble, \email{daniel.noble@anu.edu.au} \cr
   Wolfgang Viechtbauer, \email{wvb@metafor-project.org}
}
\examples{
# note: the examples below are not run since they require interactivity

if (FALSE) {

   # find all datasets tagged with the concept term 'standardized mean differences'
   datsearch("standardized mean differences")

   # find all datasets tagged with the concept terms 'odds ratio' AND 'multilevel'
   datsearch("odds ratio, multilevel")

   # do a full-text search for the term 'infarct'
   datsearch("infarct", concept=FALSE)

   # do a full-text search for 'rma.mv(' (essentially finds all datasets where the rma.mv()
   # function was used in the examples section of a help file)
   datsearch("rma.mv(", concept=FALSE)

}
}
\keyword{file}
