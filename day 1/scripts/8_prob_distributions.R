## ------------------------------------------------------------------------
n_sim <- 10000  # number of generated draws
p <- 0.3      # prob of success
n <- 6        # number of experiments in BIN


## ------------------------------------------------------------------------
data_binom <- rbinom(n_sim, n, p)


## ------------------------------------------------------------------------
mean(data_binom) # empirical mean
var(data_binom)  # empirical variance


## ------------------------------------------------------------------------
x <- sort(unique(data_binom))
emp_prob <- data_binom %>% table() %>% as.data.frame() %>% mutate(label = "emp", prob = Freq/n_sim)
theo_prob <- data_binom %>% table() %>% as.data.frame() %>% mutate(label = "theo", prob = dbinom(x, n, p))
df <- bind_rows(theo_prob, emp_prob) # or use 'rbind'
df$label <- as.factor(df$label)
ggplot(df, aes(., prob)) + theme_bw() + geom_col(aes(fill = label), position = position_dodge())


## ------------------------------------------------------------------------
# evaluate cdf of N(0,1) in 0
pnorm(0, mean = 0, sd = 1)
pnorm(0, 0, 1) # shorter
# 95% quantile of N(0,1) 
qnorm(0.95, mean = 0, sd = 1)
# a set of quantiles
qnorm(c(0.025, 0.05, 0.5, 0.95, 0.975), 0, 1)


## ------------------------------------------------------------------------
x <- rnorm(10000, mean = 10, sd = 1)
hist(x, probability = TRUE, nclass = 55, col = "pink", main = " ")
curve(dnorm(x, mean = 10, sd = 1), xlim = range(x), col = "black", add = TRUE)


## ------------------------------------------------------------------------
x <- rnorm(100, mean = 10, sd = 1)
df <- data.frame(x = x)
ggplot(df, aes(x)) + stat_ecdf(geom = "step") + theme_bw() + ylab("") +
  stat_function(fun = pnorm, args = list(mean = 10, sd = 1), col = "blue")




