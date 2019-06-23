## ------------------------------------------------------------------------
path <- dirname(rstudioapi::getActiveDocumentContext()$path)
setwd(path)


## ------------------------------------------------------------------------
car_price <- read.csv("../data/car_price.csv", header = TRUE)


## ------------------------------------------------------------------------
## R challenge


## -------------------------------------------------------------------------
## y ~ x


## -------------------------------------------------------------------------
## lm(price ~ income, data = car_price)


## -------------------------------------------------------------------------
lm_car <- lm(price ~ income, data = car_price)


## -------------------------------------------------------------------------
class(lm_car) 
names(lm_car)


## ------------------------------------------------------------------------
summary(lm_car)


## ------------------------------------------------------------------------
lm_car$coef
head(lm_car$residuals)
head(lm_car$fitted.values)


## -------------------------------------------------------------------------
plot(lm_car)


## -------------------------------------------------------------------------
ggplot(car_price, aes(x = income, y = price)) + 
  theme_bw() +
  geom_point(shape = 1, alpha = 1/2) + 
  geom_smooth() +
  geom_abline(intercept = lm_car$coef[1], slope = lm_car$coef[2], colour = "red") 


## ------------------------------------------------------------------------
new <- data.frame(income = 60000) # set up a new data frame
new_pred <- predict(lm_car, newdata = new) # call predict 
new_pred


## ------------------------------------------------------------------------
## R challenge




## ------------------------------------------------------------------------
lm_mort_all <- lm(mort ~ ., data = pollution)
summary(lm_mort_all)


## ------------------------------------------------------------------------
library(broom)
library(dplyr)
lm_car <- lm(price ~ income, data = car_price)
lm_car %>% tidy()


## ------------------------------------------------------------------------
lm_fit <- lm_car %>% tidy()


## ------------------------------------------------------------------------
lm_car %>% glance()


## ------------------------------------------------------------------------
lm_car %>% augment()


## ------------------------------------------------------------------------
lm_car %>% augment(car_price)


## ------------------------------------------------------------------------
## R challenge




## ------------------------------------------------------------------------
library(modelr)
wages <- heights %>% filter(income > 0)
## R challenge





## ------------------------------------------------------------------------
td <- tidy(lm_fit, conf.int = TRUE)
ggplot(td, aes(estimate, term, color = term)) + geom_point() + geom_errorbarh(aes(xmin = conf.low, xmax = conf.high)) + theme_bw()


## -------------------------------------------------------------------------
library(mlbench)
data("BostonHousing")
housing <- BostonHousing


## -------------------------------------------------------------------------
## R challenge




## ------------------------------------------------------------------------
library(tidyr)
res <- housing %>% select(c(crim, rm, age, rad, tax, lstat, medv)) %>%
  gather(., variable, value, crim:lstat, factor_key = TRUE)



## ------------------------------------------------------------------------
res %>%
  ggplot(aes(x = value, y = medv, colour = variable)) +
  geom_point(alpha = 0.7) +
  stat_smooth(color = "black") +
  facet_wrap( ~ variable, scales = "free", ncol = 2) +
  labs(x = "Variable 
       Value", y = "Median House Price ($1000s)") +
  theme_minimal()


## ------------------------------------------------------------------------
library(caret)
set.seed(123)
to_train <- createDataPartition(y = housing$medv, p = 0.75, list = FALSE)
train <- housing %>% slice(., to_train)
test <- housing %>% slice(., -to_train)


## ------------------------------------------------------------------------
## R challenge


## ------------------------------------------------------------------------
## R challenge



## ------------------------------------------------------------------------
## R challenge



## ------------------------------------------------------------------------
## R challenge





