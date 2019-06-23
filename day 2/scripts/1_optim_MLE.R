## ------------------------------------------------------------------------
uniroot(function(x) x^2-3^(-x), lower = 0, upper = 1)


## ------------------------------------------------------------------------
f <- function(x){
  x^2-3^(-x)
}


## ------------------------------------------------------------------------
opt <- uniroot(f, lower = 0, upper = 1)
names(opt)


## ------------------------------------------------------------------------
f(opt$root)


## ------------------------------------------------------------------------
range <- seq(-2, 2, by = 0.2)
plot(range, f(range), type = "l")
points(opt$root, f(opt$root), pch = 20)
segments(opt$root, -7, opt$root, 0, lty = 2)
segments(-3, 0, opt$root, 0, lty = 2)


## -------------------------------------------------------------------------
data <- data.frame(x = range, y = f(range))
ggplot(data, aes(x = x, y = y)) + geom_line() + 
  geom_point(x = opt$root, y = f(opt$root)) +
  geom_segment(x = opt$root, y = -7, xend = opt$root, yend = 0, linetype = "dashed") +
  geom_segment(x = -3, y = 0, xend = opt$root, yend = 0, linetype = "dashed") +
  theme_bw()


## -------------------------------------------------------------------------
shape_1 <- 3; shape_2 <- 2
x <- seq(from = 0, to = 1, by = 0.01)
curve(dbeta(x, shape_1, shape_2), xlim = range(x))


## ------------------------------------------------------------------------
opt_beta <- optimize(dbeta, interval = c(0, 1), maximum = TRUE, shape_1, shape_2)


## -------------------------------------------------------------------------
curve(dbeta(x, shape_1, shape_2), xlim = range(x))
points(opt_beta$maximum, opt_beta$objective, pch = 20, cex = 1.5)
segments(opt_beta$maximum, 0, opt_beta$maximum, opt_beta$objective, lty = 2)


## ------------------------------------------------------------------------
nsim <- 10000
x <- rgamma(nsim, shape = 3, rate = 1.5)


## ------------------------------------------------------------------------
mean(x) ; var(x)


## ------------------------------------------------------------------------
3 * (1/1.5) ;  3 * (1/1.5)^2


## ------------------------------------------------------------------------
d <- data.frame(x)
ggplot(d, aes(x = x)) + geom_histogram(aes(y = ..density..), binwidth = 0.3, color = "black", fill = "white") +
  geom_density(alpha = .2, fill = "#FF6666") +
  theme_bw()


## ------------------------------------------------------------------------
f <- function(p,x){
  -sum(dgamma(x, shape = p[1], rate = p[2], log = TRUE))
}


## ------------------------------------------------------------------------
nlm(f, c(1, 1), x = x)


## ------------------------------------------------------------------------
optim(c(1, 1), f, x = x)


## ------------------------------------------------------------------------
library(MASS)
fitdistr(x, dens = "gamma")


## ----R challenge---------------------------------------------------------

