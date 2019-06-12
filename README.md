## PE Programming R for data science, 2019

In these folders you will find all the material for a two day workshop covering the use of R for data science.


#### Day 1: Basics of R

The R programming language is an invaluable tool for data science. This course equips you with the fundamental tools for data analysis in R and RStudio. You'll come out of this course with basic understanding of R as an environment for data handling, data exploration and data visualization. Via a set of hands-on demonstrations and exercises you first study the basics of the R syntax, you will explore RStudio as an integrated development environment for R programming and learn about R packages. You explore the different types of objects, data structures and data types used in R. Then, you focus on working with data sets in R; import, export, data manipulations, data cleaning and wrangling. You will meet powerful packages such as data.table and the packages from the tidyverse. You unlock the full potential of the tidyverse by learning more methods for manipulating data sets. You learn more about working with common R data types such as dates and factor variables. Finally, you will use R to create various types of insightful graphics and discover the basics of writing and using funtions in R. The course is designed for new R users, no prior knowledge is required.

#### Day 2: Predictive modeling with R

Topics to be covered: 
- working with probability distributions
- basics of statistics
- linear models
- generalized linear models
- decision trees. 

### Software Requirements

Please bring a laptop with a recent version of R and RStudio installed.

- R (at least 3.5.2 <https://cloud.r-project.org/bin/windows/base/> )
- RStudio ( <https://www.rstudio.com/products/rstudio/download/#download> )

Run the following script in your R session to install the required packages. 

```r
packages <- c("tidyverse", "corrplot", "rpart", "readxl", "data.table", "gapminder", "microbenchmark", "mgcv", "evtree", "classInt", "rgdal", "RColorBrewer", "ggmap", "grid", "gridExtra")
new_packages <- packages[!(packages %in% installed.packages()[,"Package"])]
if(length(new_packages)) install.packages(new_packages)

all_packages <- c("ggplot2", "dplyr", "tidyr", "purrr", "readr", "tibble", "lubridate", "corrplot", "readxl", "data.table", "rpart", "gapminder", "microbenchmark", "mgcv", "evtree", "classInt", "rgdal", "RColorBrewer", "ggmap", "grid", "gridExtra")

if(sum(!(all_packages %in% installed.packages()[, "Package"]))) {
  stop("Not all required packages are installed!")
} else {
  message("Everything is set up correctly. You are ready for the workshop!")
}
```

These instructions can also be downloaded as .R script from the folder `instructions-for-participants`. Open this script in R (via File > Open file), select the code and press the `Run` top right in the script window.

### Course material

Coming soon.

