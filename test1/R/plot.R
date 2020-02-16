#'
#'
#' @return  graph built using the package ggplot2 and gridextra
#'
#'
#' @examples
#' plot1()
#' @export
 plot1<- function(){
  ## we need to make sure that the categorical variables are defined as factors
  birthwt <- MASS::birthwt
  p1 <- ggplot2::ggplot(data = birthwt,
                  ggplot2::aes(race)) +
    ggplot2::ggtitle("race distribution") +
    ggplot2::geom_bar(fill= "orange")
  p2 <-  ggplot2::ggplot(data = birthwt,
                         ggplot2::aes(smoke)) +
    ggplot2::ggtitle("smoker distribution") +
    ggplot2::geom_bar(fill= "yellow")
  p3 <-  ggplot2::ggplot(data = birthwt,
                         ggplot2::aes(age)) +
    ggplot2::ggtitle("women age") +
    ggplot2::geom_bar(fill= "green")
  p4 <- ggplot2::ggplot(data = birthwt,
                        ggplot2::aes(lwt)) +
    ggplot2::ggtitle("women weight") +
    ggplot2::geom_bar(fill= "red")

  gridExtra::grid.arrange(p1,p2,p3,p4,ncol=2)
  result<-list(p1,p2,p3,p4)
  return(result)
}

