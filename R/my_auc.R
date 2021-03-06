# my_auc.R
# -----------------------------------------------------------------------------
# Author: Bahman Afsari, Albert Kuo
# Date last modified: Feb 1, 2021
#
# Functions for calculating AUC using the Mann-Whitney U Statistic

#' Calculate AUC for a column
#' 
#' Calculate AUC for one column using the Mann-Whitney U statistic
#' 
#' @param y an indicator variable column, i.e. the "true value" column
#' @param x a column of numeric values, e.g. the projected counts of a feature
#' 
#' @return \code{my_auc} returns a numeric AUC value
#' 
#' @noRd
#' 
my_auc <- function(y, x){
    # Handle missing observations
    missing_x <- is.na(x)
    if(all(missing_x)){
        return(NA)
    } else if(any(missing_x)){
        x <- x[!missing_x]
        y <- y[!missing_x]
    }
    ind <- which(y == 1)
    n1 <- sum(y == 1)
    n0 <- sum(y == 0)
    diff_rank <- sum(rank(x, ties.method = "first")[ind]) - n1*(n1+1)/2 
    return(diff_rank/(n1*n0))                                        
}
