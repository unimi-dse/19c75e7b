#'A bar chart
#'The function creates a bar chart rapresenting the mother'sweight in pounds at last menstrual period
#'
#' @return
#' @export
plot2 <- function(){
 p <- ggplot2::qplot(x = lwt, data = birthwt, geom = "bar")
  return(p)
}
