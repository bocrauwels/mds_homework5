
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