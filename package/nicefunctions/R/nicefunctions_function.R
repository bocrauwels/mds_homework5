#' Function 1: Get highest free throw
#' @param x is the year of interest
#' @return The max number of free throw points made by any player in a given year
#' @examples
#' get_best_player(1950)

get_highest_ft <- function(x) {
  max_ftr <- data %>%
    filter(Year == x) %>%
    summarize(max = max(FTr))
  print(paste("The maximum Free Throws attained in this year was", max_ftr ))
}

#' Function 2: Get oldest player
#' @param x is the year of interest
#' @return the name of the oldest player in a given year
#' @examples
#' get_oldest_player(1950)

get_oldest_player <- function(x) {
  max_age <- data %>%
    filter(Year == x) %>%
    filter(Age == max(Age)) %>% arrange(desc(Player)) %>%
    select(Player)
  return(max_age[[1]])
}

#' Function 3: Get correlation matrix
#' @param x is the year of interest
#' @return  the correlation matrix for all numerical variables in the nba data for a given year
#' @examples
#' cor_print(1950)

cor_print <- function(x){
  data_numeric <- keep(data, is.numeric)
  data_filtered <- data_numeric %>%
    filter(Year == x, na.rm=TRUE)
  output <- cor(data_filtered)
  return(output)
}
