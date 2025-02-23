\name{dat.ishak2007}
\docType{data}
\alias{dat.ishak2007}
\title{Studies on Deep-Brain Stimulation in Patients with Parkinson's disease}
\description{Results from 46 studies examining the effects of deep-brain stimulation on motor skills of patients with Parkinson's disease.}
\usage{dat.ishak2007}
\format{The data frame contains the following columns:
\tabular{lll}{
\bold{study}      \tab \code{character}  \tab (first) author and year \cr
\bold{y1i}        \tab \code{numeric}    \tab observed mean difference at 3 months \cr
\bold{v1i}        \tab \code{numeric}    \tab sampling variance of the mean difference at 3 months \cr
\bold{y2i}        \tab \code{numeric}    \tab observed mean difference at 6 months \cr
\bold{v2i}        \tab \code{numeric}    \tab sampling variance of the mean difference at 6 months \cr
\bold{y3i}        \tab \code{numeric}    \tab observed mean difference at 12 months \cr
\bold{v3i}        \tab \code{numeric}    \tab sampling variance of the mean difference at 12 months \cr
\bold{y4i}        \tab \code{numeric}    \tab observed mean difference at the long-term follow-up \cr
\bold{v4i}        \tab \code{numeric}    \tab sampling variance of the mean difference at the long-term follow-up \cr
\bold{mdur}       \tab \code{numeric}    \tab mean disease duration (in years) \cr
\bold{mbase}      \tab \code{numeric}    \tab mean baseline UPDRS score
}
}
\details{
   Deep-brain stimulation (DBS), which is delivered through thin surgically implanted wires in specific areas of the brain and controlled by the patient, is meant to provide relief of the debilitating symptoms of Parkinson's disease. The dataset includes the results from 46 studies examining the effects of DBS of the subthalamic nucleus on motor functioning, measured with the Unified Parkinson's Disease Rating Scale (UPDRS). The effect size measure for this meta-analysis was the mean difference of the scores while the stimulator is active and the baseline scores (before implantation of the stimulator). Since lower scores on the UPDRS indicate better functioning, negative numbers indicate improvements in motor skills. Effects were generally measured at 3, 6, and 12 months after implantation of the stimulator, with some studies also including a further long-term follow-up. However, the number of measurements differed between studies - hence the missing data on some of the measurement occasions.

   Since the same patients were followed over time within a study, effect size estimates from multiple measurement occasions are likely to be correlated. A multivariate model accounting for the correlation in the effects can be used to meta-analyze these data. A difficulty with this approach is the lack of information about the correlation of the measurements over time in the individual studies. The approach taken by Ishak et al. (2007) was to assume an autoregressive (AR1) structure for the estimates within the individual studies. In addition, the correlation in the true effects was modeled, again using an autoregressive structure.
}
\source{
   Ishak, K. J., Platt, R. W., Joseph, L., Hanley, J. A., & Caro, J. J. (2007). Meta-analysis of longitudinal studies. \emph{Clinical Trials}, \bold{4}(5), 525--539. \verb{https://doi.org/10.1177/1740774507083567}
}
\author{
   Wolfgang Viechtbauer, \email{wvb@metafor-project.org}, \url{https://www.metafor-project.org}
}
\examples{
### copy data into 'dat' and examine data
dat <- dat.ishak2007
head(dat, 5)

\dontrun{

### load metafor package
library(metafor)

### create long format dataset
dat <- reshape(dat, direction="long", idvar="study", v.names=c("yi","vi"),
               varying=list(c(2,4,6,8), c(3,5,7,9)))
dat <- dat[order(study, time),]

### remove missing measurement occasions from dat.long
dat <- dat[!is.na(yi),]
rownames(dat) <- NULL
head(dat, 8)

### construct the full (block diagonal) V matrix with an AR(1) structure
### assuming an autocorrelation of 0.97 as estimated by Ishak et al. (2007)
V <- vcalc(vi, cluster=study, time1=time, phi=0.97, data=dat)

### plot data
with(dat, interaction.plot(time, study, yi, type="b", pch=19, lty="solid", xaxt="n",
          legend=FALSE, xlab="Time Point", ylab="Mean Difference", bty="l"))
axis(side=1, at=1:4, lab=c("1 (3 months)", "2 (6 months)", "3 (12 months)", "4 (12+ months)"))

### multivariate model with heteroscedastic AR(1) structure for the true effects
res <- rma.mv(yi, V, mods = ~ factor(time) - 1, random = ~ time | study,
              struct = "HAR", data = dat)
print(res, digits=2)

}
}
\keyword{datasets}
\concept{medicine}
\concept{raw mean differences}
\concept{longitudinal models}
\section{Concepts}{
   medicine, raw mean differences, longitudinal models
}
