#' Function 2: Get oldest player
#' @param x is the year of interest
#' @return the name of the oldest player in a given year
#' @export
#' @examples
#' get_oldest_player(1950)

get_oldest_player <- function(x) {
  max_age <- Seasons_Stats_NBA %>%
    filter(Year == x) %>%
    filter(Age == max(Age)) %>% arrange(desc(Player)) %>%
    select(Player)
  return(max_age[[1]])
}
