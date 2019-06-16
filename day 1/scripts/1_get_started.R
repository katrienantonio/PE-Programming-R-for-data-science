## install.packages("ggplot2")

library(ggplot2)

head(diamonds)
qplot(clarity, data = diamonds, fill = cut, geom = "bar")

number_of_simulations <- 100

Multiply_by_2 <- function(x) {
   return(x * 2)
}

zero_list <- rep(0, 100)
