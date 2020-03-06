#' Acquisition of dataset
#'
#' @param MASS This is the package where dataframe come from
#' @param birthwt selected dataframe
#'
#' @return data
#'
#' @examples
#' read_data()
#' @export
read_data <- function(MASS, birthwt) {
  birthwt <- MASS::birthwt

  bwt <- with(birthwt, {
    race <- factor(race, labels = c("white", "black", "other"))
    ptd <- factor(ptl > 0)
    ftv <- factor(ftv)
    levels(ftv)[-(1:2)] <- "2+"
    data.frame(low = factor(low), age, lwt, race, smoke = (smoke > 0),
               ptd, ht = (ht > 0), ui = (ui > 0), ftv)
  })
  birthwt<-data.frame(birthwt)
  return (birthwt)
}
