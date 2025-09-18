# 1. list requirements early
# (i.e., load libraries at the beginning)

install.packages("groundhog")
library("groundhog")
pkgs <- c("here","tidyverse", "lubridate")
groundhog.library(pkgs, "2025-09-16")

# the package "here" can be used for relative paths and is better than the function "setwd"; see for more information: https://here.r-lib.org/
here()

#----load-inflation----
# 2. use relative locations
# (i.e., relative paths instead absolute, names instead of indices)
games_raw <- readr::read_csv(
  # directly download and load data
  "https://raw.githubusercontent.com/rfordatascience/tidytuesday/master/data/2021/2021-03-16/games.csv"
)

#----transform-inflation----
# 3. document relevant information
# (i.e., variable names are documentation + comments)
games <- mutate(games_raw, date = str_c(month, "_", year) %>% # concatenate month and year
                  my()) # my = month year -> convert to date

str(games)
table(games$gamename, useNA ='always')

with(mtcars, plot(hp, mpg))
str(mtcars)
