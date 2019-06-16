## ------------------------------------------------------------------------
cps_1985 <- read.table("../data/CPS1985.txt", header = TRUE)


## ------------------------------------------------------------------------
summary(cps_1985$wage)         # get a summary
is.numeric(cps_1985$wage)      # check if variable is numeric
mean(cps_1985$wage)            # get mean
var(cps_1985$wage)             # get variance


## ------------------------------------------------------------------------
hist(log(cps_1985$wage), freq = FALSE, nclass = 20, col = "light blue")
lines(density(log(cps_1985$wage)), col = "red")


## ------------------------------------------------------------------------
summary(cps_1985$occupation)


## ------------------------------------------------------------------------
levels(cps_1985$occupation)[c(1, 5)] <- c("mgmt", "techn")
summary(cps_1985$occupation)


## ------------------------------------------------------------------------
tab <- table(cps_1985$occupation)
prop.table(tab)


## ------------------------------------------------------------------------
barplot(tab)


## ------------------------------------------------------------------------
attach(cps_1985)                 # attach the data set to avoid use of $ 
table(gender, occupation)        # no name_df$name_var necessary
prop.table(table(gender, occupation))
detach(cps_1985)                 # now detach when work is done


## ------------------------------------------------------------------------
plot(gender ~ occupation, data = cps_1985)


## ------------------------------------------------------------------------
attach(cps_1985)


## ------------------------------------------------------------------------
tapply(wage, gender, mean)
tapply(log(wage), list(gender, occupation), mean)


## ------------------------------------------------------------------------
detach(cps_1985)


## ------------------------------------------------------------------------
boxplot(log(wage) ~ gender, data = cps_1985)


## ------------------------------------------------------------------------
boxplot(log(wage) ~ gender + occupation, data = cps_1985)


## ------------------------------------------------------------------------
journals <- read.table("../data/journals.txt", header = TRUE)
journals$cite_price <- journals$price/journals$citations
plot(log(cite_price) ~ log(subs), data = journals)
rug(log(journals$subs))
rug(log(journals$cite_price), side = 2)


## ------------------------------------------------------------------------
plot(log(cite_price) ~ log(subs), data = journals, pch = 19,
      col = "blue", xlim = c(0, 8), ylim = c(-7, 4),
      main = "Library subscriptions")
rug(log(journals$subs))
rug(log(journals$cite_price), side=2)


## ------------------------------------------------------------------------
curve(dnorm, from = -5, to = 5, col = "red", lwd = 3, 
      main = "Density of the standard normal distribution")


## ------------------------------------------------------------------------
library(ggplot2)
ggplot(data = mpg)
ggplot(mpg)


## ------------------------------------------------------------------------
library(ggplot2)
ggplot(data = mpg) +
  geom_point(mapping = aes(x = displ, y = hwy))


## ------------------------------------------------------------------------
ggplot(data = mpg) +
  geom_point(aes(x = displ, y = hwy, 
                 color = class))


## ------------------------------------------------------------------------
ggplot(mpg) + geom_point(aes(x = displ, y = hwy, color = class))


## ------------------------------------------------------------------------
ggplot(mpg) + geom_point(aes(x = displ, y = hwy, color = "blue"))


## ------------------------------------------------------------------------
ggplot(mpg) + geom_point(aes(x = displ, y = hwy), color = "blue")


## ------------------------------------------------------------------------
ggplot(mpg) + geom_point(mapping = aes(x = class, y = hwy))


## ------------------------------------------------------------------------
ggplot(data = mpg) +
geom_boxplot(mapping = aes(x = class, y = hwy))


## ------------------------------------------------------------------------
ggplot(data = mpg) +
geom_histogram(mapping = aes(x = hwy))


## ------------------------------------------------------------------------
ggplot(data = mpg) +
geom_density(mapping = aes(x = hwy))


## -------------------------------------------------------------------------
ggplot(data = mpg) +
  geom_point(mapping = aes(x = displ, y = hwy)) +
  geom_smooth(mapping = aes(x = displ, y = hwy))


## -------------------------------------------------------------------------
ggplot(data = mpg, mapping = aes(x = displ, y = hwy)) +
  geom_point() +
  geom_smooth() + theme_bw()       # adjust theme 


## --------------------------------------------------------------------------
ggplot(data = mpg, mapping = aes(x = displ, y = hwy)) +
  geom_point(mapping = aes(color = drv)) +
  geom_smooth() + theme_bw()


## --------------------------------------------------------------------------
library(dplyr)
ggplot(data = mpg, mapping = aes(x = displ, y = hwy)) +
  geom_point(mapping = aes(color = drv)) +
  geom_smooth(data = filter(mpg, drv == "f")) + theme_bw()


## ----R challenge-----------------------------------------------------------

