#' Linear Regression
#'
#'
#' This function runs two different multiple linear regression: the firts one is a "total" multiple linear
#' regression with all the parameters; the second one is a multiple linear regression with the parameters that are tested significat from the fist regression
#'
#' @param birthwt set of 189 rown and 10 columns
#'
#'
#' @importFrom stats lm
#'
#'
#' @export
regfunction <- function(){
  birthwt <- MASS::birthwt
  #multiple linear regression
 reg_1<-glm(low~age + lwt + race + smoke + ptl + ht + ui + ftv, data = birthwt)
  summary(reg_1)

  # from looking at p-value, we can deduct that only the variables
  # lwt, race2, race3, smoke1, ht1 are significant. Let's try to fit our model with only those variables.
  # We expect an improvement of our model.

reg_2 <-glm(low ~ lwt + race + smoke  + ht ,
              data=birthwt,family= "binomial" )
  summary(reg_2)
  result<-list(summary(reg_1), summary(reg_2))
  return(result)

}
