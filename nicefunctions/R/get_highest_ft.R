#' Function 1: Get highest free throw
#'
#' @param x is the year of interest
#' @return The max number of free throw points made by any player in a given year
#' @export
#' @examples
#' get_best_player(1950)

get_highest_ft <- function(x) {
  max_ftr <- data %>%
    filter(Year == x) %>%
    summarize(max = max(FTr))
  print(paste("The maximum Free Throws attained in this year was", max_ftr ))
}



