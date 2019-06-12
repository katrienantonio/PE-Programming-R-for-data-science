# Instructions for participants

packages <- c("tidyverse", "corrplot", "rpart", "readxl", "data.table", "gapminder", "microbenchmark", "mgcv", "evtree", "classInt", "rgdal", "RColorBrewer", "ggmap", "grid", "gridExtra")
new_packages <- packages[!(packages %in% installed.packages()[,"Package"])]
if(length(new_packages)) install.packages(new_packages)

all_packages <- c("ggplot2", "dplyr", "tidyr", "purrr", "readr", "tibble", "lubridate", "corrplot", "readxl", "data.table", "rpart", "gapminder", "microbenchmark", "mgcv", "evtree", "classInt", "rgdal", "RColorBrewer", "ggmap", "grid", "gridExtra")

if(sum(!(all_packages %in% installed.packages()[, "Package"]))) {
  stop("Not all required packages are installed!")
} else {
  message("Everything is set up correctly. You are ready for the workshop!")
}