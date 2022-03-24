library(readr)
Seasons_Stats_NBA <- read_csv("~/Desktop/mds_/gr5072-homework-5-bocrauwels/data/raw/Seasons_Stats_NBA.csv")

usethis::use_data(Seasons_Stats_NBA, compress = "xz")
