## ------------------------------------------------------------------------
f <- function(x){
  x^2
}
integrate(f, lower = 0, upper = 1)


## -------------------------------------------------------------------------
# install.packages(purrr)
require(purrr)


## ----R challenge----------------------------------------------------------



## -------------------------------------------------------------------------
library(purrr)

# number of sims
n_sim <- 1000

# generate frequencies from the poisson distribution
freqs <- rpois(n = n_sim, lambda = expected_freq)
head(freqs)

# generate `freq` severities
# each severity represents the ultimate value of 1 claim 
obs <- purrr::map(freqs, function(freq) rlnorm(n = freq, meanlog = 9, sdlog = 1.75))
head(obs)


## --------------------------------------------------------------------------
library(purrr); library(dplyr)
i <- 0
obs <- purrr::map(obs, function(sev) {
  i <<- i + 1
  tibble(
    ob = i,
    sev = sev
  )
})

obs <- dplyr::bind_rows(obs)
head(obs, 10)


## ----R challenge-----------------------------------------------------------

