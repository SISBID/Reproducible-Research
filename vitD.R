#' Table of Vitamin D Levels From Studies in IOM 2010 Review
#' 
#' These values here summarize the data from the 10 studies
#' used by the Institute of Medicine in determining mappings 
#' between supplemental doses of vitamin D in international
#' units (IU) and achieved levels of serum 25(OH)D in nmol/L 
#' from randomized, double-blind placebo-controlled clinical 
#' trials (RCTs). The goal was to clarify a supplemental dose 
#' which should bring serum levels to a healthy target (here
#' set at 50 nmol/L) in 97.5\% of the population. 
#' A problem with the fit was reported by 
#' \href{http://www.mdpi.com/2072-6643/6/10/4472}{Veugelers and Ekwaru (2014)}. 
#' 
#' @format This table is 33 by 14.\cr
#'   Each row summarizes the results from one arm of one study.
#'   The columns are \cr
#'   \strong{Study} - a factor identifying the study examined, 
#'     using names of the form LastAuthorYear.\cr
#'  \strong{N} - the number of participants in the trial arm.\cr
#'  \strong{Dose} - the supplemental dose in the trial arm, in IU.\cr
#'  \strong{DietaryIntake} - the estimated amount of vitamin D that
#'    trial arm participants received from their diet, in IU.
#'  \strong{TotalIntake} - the estimated total vitamin D intake, 
#'    generally the sum of Dose and DietaryIntake.\cr
#'  \strong{AchievedLevel} - the mean achieved level of serum 
#'    25(OH)D in the trial arm, in nmol/L.\cr
#'  \strong{AchievedLevelSD} - the sd of the achieved levels; 
#'    not always given.\cr
#'  \strong{IOMIntake} - the value used by the IOM for total intake;
#'    this is not always the same as the TotalIntake value we 
#'    derived.\cr
#'  \strong{IOMLevel} - the value used by the IOM for achieved serum
#'    level. Again, this is not always the same as the AchievedLevel
#'    we derived.\cr
#'  \strong{AgeGroup} - factor listing whether the study participants
#'    were primarily Young (18 or less), Adult (under 60), or Old.\cr
#'  \strong{InTable5p4} - whether the numbers in this row are 
#'    reported in some form in Table 5.4 of the IOM report.\cr
#'  \strong{Color} - the color we use in R for plotting values
#'    from a given study (random effect unit).\cr
#'  \strong{Symbol} - the symbol we use in plotting values from 
#'    participants in a given age group.\cr
#'  \strong{PlotSymbol} - the plot symbol number (pch value) used
#'    in R for plotting values from a given age group.\cr
#' 
#' @source This tabulation represents my independent reconstruction 
#'   of the entries given in Table 5.4 of the 2010 IOM report
#'   on Dietary Reference Intakes for Calcium and Vitamin D from
#'   the 10 papers listed as providing the basis for their model
#'   fitting and RDA derivations, as illustrated in the IOM reports
#'   Figures 5.3 and 5.4.
#'   The IOM report itself can be downloaded from 
#'   \href{http://www.nationalacademies.org/hmd/Reports/2010/Dietary-Reference-Intakes-for-Calcium-and-Vitamin-D.aspx}{the IOM web page}.
#'   Table 5.4 covers pages 372-377.
#'   
#' @name vitD
NULL