## ------------------------------------------------------------------------
getwd()


## ------------------------------------------------------------------------
## path <- file.path("C:/Users/u0043788/Dropbox/PE Programming in R for Data Science")
## setwd(path)


## ------------------------------------------------------------------------
## path_pools <- file.path("./data/swimming_pools.csv")


## ------------------------------------------------------------------------
## path_pools <- file.path("../data/swimming_pools.csv")


## ------------------------------------------------------------------------
path <- dirname(rstudioapi::getActiveDocumentContext()$path)
setwd(path)


## ------------------------------------------------------------------------
path_pools <- file.path("../data/swimming_pools.csv")


## ------------------------------------------------------------------------
path_hotdogs <- file.path("../data/hotdogs.txt")
path_hotdogs    # inspect path name
hotdogs <- read.table(path_hotdogs, header = FALSE,
                       col.names = c("type", "calories", "sodium"))
str(hotdogs)    # inspect data imported


## ------------------------------------------------------------------------
hotdogs_2 <- read.table(path_hotdogs, header = FALSE,
                        col.names = c("type", "calories", "sodium"),
                        colClasses = c("factor", "NULL", "numeric"))
str(hotdogs_2)


## ------------------------------------------------------------------------
path_pools <- file.path("../data/swimming_pools.csv")
pools <- read.csv(path_pools)
str(pools)


## ------------------------------------------------------------------------
pools <- read.csv(path_pools, stringsAsFactors = FALSE)
str(pools)


## ------------------------------------------------------------------------
library(readxl)
path_urbanpop <- file.path("../data/urbanpop.xlsx")
excel_sheets(path_urbanpop) # list sheet names with `excel_sheets()`


## ------------------------------------------------------------------------
pop_1 <- read_excel(path_urbanpop, sheet = 1) 
pop_2 <- read_excel(path_urbanpop, sheet = 2)


## ------------------------------------------------------------------------
str(pop_1)
pop_list <- list(pop_1, pop_2)


## ----R challenge----------------------------------------------------------

