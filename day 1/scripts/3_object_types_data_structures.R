## ------------------------------------------------------------------------
my_numeric <- 42.5

my_character <- "some text"

my_logical <- TRUE

my_date <- as.Date("06/17/2019", "%m/%d/%Y")


## -------------------------------------------------------------------------
class(my_numeric)
class(my_date)


## -------------------------------------------------------------------------
ls()


## -------------------------------------------------------------------------
rm(a)                                     # remove a single object
rm(my_character, my_logical)              # remove multiple objects
rm(list = c('my_date', 'my_numeric'))     # remove a list of objects
rm(list = ls())                           # remove all objects


## -------------------------------------------------------------------------
my_vector <- c(0, 3:5, 20, 0)
my_vector[2]       # inspect entry 2 from vector my_vector
my_vector[2:3]     # inspect entries 2 and 3
length(my_vector)  # get vector length
my_family <- c("Katrien", "Jan", "Leen")
my_family


## -------------------------------------------------------------------------
my_vector <- c("Katrien Antonio", "teacher")
names(my_vector) <- c("Name", "Profession")
my_vector


## ----R challenge----------------------------------------------------------



## -------------------------------------------------------------------------
my_matrix <- matrix(1:12, 3, 4, byrow = TRUE)
my_matrix
my_matrix[1, 1]


## -------------------------------------------------------------------------
mtcars
str(mtcars)
head(mtcars)


## ------------------------------------------------------------------------
summary(mtcars$cyl)   # use $ to extract variable from a data frame


## ------------------------------------------------------------------------
diamonds
str(diamonds)  # built-in in library ggplot2
head(diamonds)


## ------------------------------------------------------------------------
my_list <- list(one = 1, two = c(1, 2), five = seq(1, 4, length=5),
                six = c("Katrien", "Jan"))
names(my_list)
str(my_list)


## ----R challenge---------------------------------------------------------


