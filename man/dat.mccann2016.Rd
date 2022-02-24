\name{dat.mccann2016}
\docType{data}
\alias{dat.mccann2016}
\title{Meta-Analysis of the Efficacy of Interleukin-1 Receptor Antagonist in Animal Models of Stroke}
\description{McCann SK, Cramond F, Macleod MR et al. Systematic Review and Meta-Analysis of the Efficacy of Interleukin-1 Receptor Antagonist in Animal Models of Stroke: an Update. Translational Stroke Research 7, 395–406 (2016).

Background information on the data set:
Interleukin-1 receptor antagonist (IL-1RA) is an anti-inflammatory protein used clinically to treat rheumatoid arthritis and is considered a promising candidate therapy for stroke. In this systematic review and meta-analysis, we sought to assess the efficacy of IL-1RA in animal models of ischaemic stroke, the range of conditions under which efficacy has been tested, and whether the data appear to be confounded due to reported study quality and publication bias. The outcomes we assess are post-stroke infarct volume (brain damage), mortality, and neurobehavioural outcomes e.g. motor deficits, in IL-1RA-treated vs. control animals.}
\usage{
dat.mccann2016
}
\format{
The data frame contains the following columns:
\tabular{lll}{
\bold{study_id} \tab \code{character} \tab a study identifier for each experimental group within a study. levels: identifier variable - author, year of publication, experimental group \cr
\bold{species} \tab \code{character} \tab 	the animal species used in the experiment. levels: Mouse, Rat \cr
\bold{strain} \tab \code{character} \tab 	the animal strain used in the experiment. levels: Balb/c, C57BL/6, C57BL/6J, C57/SV129, CD-1, Sprague dawley, Unknown, Wistar \cr
\bold{sex} \tab \code{character} \tab 	the sex of the animals used in the experiment. levels: male, unknown \cr
\bold{drug} \tab \code{character} \tab the drug administered in the experiment, levels: IL-1RA \cr
\bold{drug_delivery_mode} \tab \code{character} \tab the mode of the drug delivered to the animals. levels: IL-1 RA Tg BM cells, Protein, Transgenic, Vector \cr
\bold{route_of_delivery} \tab \code{character} \tab the route used to deliver the drug to the animals. levels: 	ICerebVentricular, IPeritoneal, IVenous, Stereotactic, SubCut \cr
\bold{drug_delivery_location} \tab \code{character} \tab the location of the drug delivery into the animals. levels: Central, Peripheral \cr
\bold{dose} \tab \code{numeric} \tab the dose of the drug administered to the animals. Numerical - continuous \cr
\bold{unit} \tab \code{character} \tab 	the unit of the drug dose administered to the animals. levels: cells, mg/kg, ng/g, Tg, µg \cr
\bold{time_of_administration} \tab \code{integer} \tab the time of the drug administration, relative to stroke induction, in minutes. Numerical - continuous (mins) \cr
\bold{number_of_doses} \tab \code{character} \tab 	the number of doses of the drug administered to the animals. levels: Continuous, Multiple, Single \cr
\bold{outcome_measure} \tab \code{character} \tab the outcome measured in the animals. Infarct volume \cr
\bold{time_of_assessment} \tab \code{integer} \tab the time the outcome was assessed, relative to stroke induction, in hours. Numerical - continuous (hours). \cr
\bold{blinded_assessment_of_infarct_volume} \tab \code{logical} \tab reporting of blinded assessment of outcome. levels: FALSE, TRUE \cr
\bold{blinded_induction_of_ischaemia} \tab \code{logical} \tab 	reporting of blinded induction of ischaemia (stroke). levels: FALSE, TRUE \cr
\bold{random_allocation} \tab \code{logical} \tab reporting of random allocation of animals to treatment or control groups. levels: FALSE, TRUE \cr
\bold{sample_size_calculation} \tab \code{logical} \tab reporting of a sample size calculation. levels: FALSE, TRUE \cr
\bold{use_of_comorbid_animals} \tab \code{logical} \tab use of animals with a comorbidity. levels: FALSE, TRUE \cr
\bold{animal_welfare_compliance} \tab \code{logical} \tab reporting of a statement of compliance with animal welfare regulations. levels: FALSE, TRUE  \cr
\bold{statement_of_potential_coi} \tab \code{logical} \tab reporting of a statement of potential conflicts of interest. levels: FALSE, TRUE  \cr
\bold{duration_of_ischaemia} \tab \code{integer} \tab 	the duration of ischaemic stroke in minutes. Numerical - continuous (mins) \cr
\bold{type_of_ischaemia} \tab \code{character} \tab the type of ischaemic stroke. levels: Permanent, Temporary, Thrombotic \cr
\bold{anaesthetic} \tab \code{character} \tab the anaesthetic used during stroke induction. levels: 	Chloral Hydrate, Halothane, Isoflurane, Ketamine, Tribromoethanol, Unknown \cr
\bold{method_of_mcao} \tab \code{character} \tab the method used for middle cerebral artery occlusion (mcao) to induce stroke. levels: electrocoagulation, Intraluminal filament/suture, Ligation, thrombin \cr
\bold{control_group_mean} \tab \code{numeric} \tab 	the mean value of the outcome measure in the control group. Numerical - continuous \cr
\bold{treatment_group_mean} \tab \code{numeric} \tab 	the mean value of the outcome measure in the treatment group. Numerical - continuous \cr
\bold{control_group_n} \tab \code{integer} \tab 	the number of animals in the control group. 	Numerical - discrete \cr
\bold{treatment_group_n} \tab \code{integer} \tab the number of animals in the treatment group. Numerical - discrete \cr
\bold{control_group_calc_n} \tab \code{numeric} \tab the number of animals in the control group after adjusting for the number of treatment groups it serves. Numerical - continuous \cr
\bold{treatment_groups_per_control} \tab \code{integer} \tab 	the number of treatment groups compared to each control group wihin an experiment. Numerical - discrete \cr
\bold{control_group_sd} \tab \code{numeric} \tab 	the standard deviation in the control group. Numerical - continuous \cr
\bold{treatment_group_sd} \tab \code{numeric} \tab 	the standard deviation in the treatment group. 	Numerical - continuous \cr
}  
}
\details{ADD_DETAILS}
\source{McCann SK, Cramond F, Macleod MR et al. Systematic Review and Meta-Analysis of the Efficacy of Interleukin-1 Receptor Antagonist in Animal Models of Stroke: an Update. Translational Stroke Research 7, 395–406 (2016).}
\author{ADD_CONTRIBUTOR_NAME, \email{ADD_EMAIL}}
\examples{
### copy data into 'dat' and examine data
dat <- dat.mccann2016
dat

\dontrun{
## create normalised mean difference effect size
# save the group means to a variable called mCi
mCi <- dat$control_group_mean

# save the group standard deviations to a variable called sdCi 
sdCi <- dat$control_group_sd

# save the number of animals to a variable called nCi
nCi <- dat$control_group_calc_n 

# save the group means to a variable called mTi
mTi <- dat$treatment_group_mean

# save the group standard deviations to a variable called sdTi 
sdTi <- dat$treatment_group_sd 

# save the number of animals to a variable called nTi
nTi <- dat$treatment_group_n

# calculate the NMD effect size for each experiment and save the results to the ESi variable
ESi <- (mCi - mTi) / mCi * 100

# add the effect size data as a new column
dat <- cbind(dat, ESi) 

## calcualte the normalised standard deviation for each group
# control group
nsdCi <- sdCi / mCi * 100 

# treatment group
nsdTi <- sdTi / mCi * 100 

# calculate the NMD standard error
SEi <- sqrt((nsdCi^2) / nCi + (nsdTi^2) / nTi)

# add the standard error data as a new column in the table
dat <- cbind(dat, SEi)   


}
}
\keyword{datasets}
\concept{meta-regression}
\concept{publication bias}
