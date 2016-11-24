#' create a list of all the packages needed to run this R File. 
all_packages_needed <- c("swirl")
#'
#'if an R package that is needed to run this code is not installed, install it. 
packages_to_install <- all_packages_needed[!(all_packages_needed %in% installed.packages()[,"Package"])]
if(length(packages_to_install)) try(install.packages(packages_to_install),silent=TRUE)

#' load the swirl library
library(swirl)

#' install all the IPS analyst courses  
install_course_github("ImprovementPathSystems","IPS_swirl_beta",multi = TRUE)

#' start swirl
swirl()


