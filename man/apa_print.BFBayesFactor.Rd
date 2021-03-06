% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/apa_print_BFBayesFactor.R
\docType{methods}
\name{apa_print.BFBayesFactor}
\alias{apa_print.BFBayesFactor}
\alias{apa_print.BFBayesFactorTop}
\alias{apa_print.BFBayesFactorList}
\alias{apa_print,BFBayesFactor-method}
\alias{apa_print,BFBayesFactorTop-method}
\alias{apa_print,BFBayesFactorList-method}
\title{Format Bayes factors (APA 6th edition)}
\usage{
apa_print.BFBayesFactor(x, iterations = 10000,
  central_tendency = median, hdi = 0.95, standardized = FALSE,
  ratio_subscript = "10", auto_invert = TRUE, scientific = TRUE,
  max = 1000, min = 1/max, evidential_boost = NULL, ...)

apa_print.BFBayesFactorTop(x, ...)

apa_print.BFBayesFactorList(x, ...)

\S4method{apa_print}{BFBayesFactor}(x, iterations = 10000,
  central_tendency = median, hdi = 0.95, standardized = FALSE,
  ratio_subscript = "10", auto_invert = TRUE, scientific = TRUE,
  max = 1000, min = 1/max, evidential_boost = NULL, ...)

\S4method{apa_print}{BFBayesFactorTop}(x, ...)

\S4method{apa_print}{BFBayesFactorList}(x, ...)
}
\arguments{
\item{x}{Output object. See details.}

\item{iterations}{Numeric. Number of iterations of the MCMC sampler to estimate HDIs from the posterior.}

\item{central_tendency}{Function to calculate central tendency of MCMC samples to obtain a point estimate from
the posterior.}

\item{hdi}{Numeric. A single value (range [0, 1]) giving the credibility level of the HDI.}

\item{standardized}{Logical. Indicates whether to return standardized or unstandardized effect size estimates.}

\item{ratio_subscript}{Character. A brief description of the model comparison in the form of \code{"M1/M2"}.}

\item{auto_invert}{Logical. Indicates whether the Bayes factor should be inverted (including \code{ratio_subscript}) if it is less than 1.}

\item{scientific}{Logical. Indicates whether to use scientific notation.}

\item{max}{Numeric. Upper limit of the Bayes factor before switching to scientific notation.}

\item{min}{Numeric. Lower limit of the Bayes factor before switching to scientific notation.}

\item{evidential_boost}{Numeric. Vector of the same length as \code{x} containing evidential boost factors for the
corresponding models (see details).}

\item{...}{Arguments passed on to \code{printnum.numeric}
\describe{
  \item{gt1}{Logical. Indicates if the absolute value of the statistic can, in principal, greater than 1.}
  \item{zero}{Logical. Indicates if the statistic can, in principal, be 0.}
  \item{na_string}{Character. String to print if element of \code{x} is \code{NA}.}
  \item{use_math}{Logical. Indicates whether to insert \code{$} into the output so that \code{Inf} or scientific
notation is rendered correctly.}
  \item{add_equals}{Logical. Indicates if the output string should be prepended with an \emph{equals} sign.}
}}
}
\value{
...
}
\description{
These methods take result objects from the \pkg{BayesFactor} package to create
 formatted character strings to report the results in accordance with APA manuscript
 guidelines. \emph{These methods are not properly tested and should be considered experimental.}
}
\details{
For models with order restrictions, evidential boosts can be calculated based on the prior and posterior
  odds of the restriction (Morey & Wagenmakers, 2014). If evidential boost factors are passed to
  \code{evidential_boost} they are multiplied with the corresponding Bayes factor before the results are formatted.
}
\examples{
\dontrun{
data(sleep)
bayesian_anova <- anovaBF(
  extra ~ group + ID
  , data = sleep
  , whichRandom = "ID"
  , progress=FALSE
)

apa_print(bayesian_anova)
}
}
\references{
Morey, R. D., & Wagenmakers, E.-J. (2014). Simple relation between Bayesian order-restricted and point-null
  hypothesis tests. \emph{Statistics & Probability Letters}, 92, 121--124. doi:
  \href{https://doi.org/10.1016/j.spl.2014.05.010}{10.1016/j.spl.2014.05.010}
}
\seealso{
Other apa_print: \code{\link{apa_print.aov}},
  \code{\link{apa_print.emmGrid}},
  \code{\link{apa_print.glht}},
  \code{\link{apa_print.glm}},
  \code{\link{apa_print.htest}},
  \code{\link{apa_print.list}}, \code{\link{apa_print}}
}
\concept{apa_print}
\keyword{internal}
