## ------------------------------------------------------------------------
3 == (2 + 1)
"intermediate" != "r"
(1 + 2) > 4
katrien <- c(19, 22, 4, 5, 7)
katrien > 5


## ------------------------------------------------------------------------
TRUE & TRUE
FALSE | TRUE
5 <= 5 & 2 < 3
3 < 4 | 7 < 6


## ------------------------------------------------------------------------
katrien <- c(19, 22, 4, 5, 7)
jan <- c(34, 55, 76, 25, 4)
katrien > 5 & jan <= 30


## ------------------------------------------------------------------------
!TRUE


## ------------------------------------------------------------------------
num_attendees <- 30
if (num_attendees > 5) {
  print("You're popular!")
}


## ------------------------------------------------------------------------
num_attendees <- 5
if (num_attendees > 5) {
  print("You're popular!")
}else{
  print("You are not so popular!")
}


## ------------------------------------------------------------------------
x <- -2

if (x^2 < 1) {
  x^2 
} else if (x >= 1) {
  2*x-1
} else {
  -2*x-1
}


## ------------------------------------------------------------------------
ifelse(x > 0, x, -x)


## ------------------------------------------------------------------------
type_of_summary <- "mode"

switch(type_of_summary,
       mean = mean(x.vec),
       median = median(x.vec),
       histogram = hist(x.vec),
       "I don't understand")


## ------------------------------------------------------------------------
todo <- 64

while (todo > 30) {
  print("Work harder")
  todo <- todo - 7
}


## ------------------------------------------------------------------------
primes <- c(2, 3, 5, 7, 11, 13)

# loop version 1
for (p in primes) {
  print(p)
}
# loop version 2
for (i in 1:length(primes)) {
  print(primes[i])
}


## ------------------------------------------------------------------------
My_sqrt <- function(x) {
  sqrt(x)
}

# use the function
My_sqrt(12)


## ------------------------------------------------------------------------
My_sqrt <- function(x, print_info = TRUE) {
  y <- sqrt(x)
  if (print_info) {
    print(paste("sqrt", x, "equals", y))
  }
  return(y)
}

# some calls of the function
My_sqrt(16)
My_sqrt(16, FALSE)
My_sqrt(16, TRUE)


## ----R challenge----------------------------------------------------------

