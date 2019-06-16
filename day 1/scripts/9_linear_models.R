## ------------------------------------------------------------------------
car_price <- read.csv("../data/car_price.csv", header = TRUE)


## ------------------------------------------------------------------------
ggplot(car_price, aes(x = income/1000, y = price)) +
  theme_bw() +
  geom_point(shape = 1, alpha = 1/2) + 
  geom_smooth() 

## ------------------------------------------------------------------------
lm_car <- lm(price ~ income, data = car_price)


## ------------------------------------------------------------------------
class(lm_car) # object class
summary(lm_car) # get a summary
# check attributes of object 'lm_car'
names(lm_car)
# some useful stuff: 'coefficients', 'residuals', 'fitted.values', 'model'
lm_car$coef
lm_car$residuals
lm_car$fitted.values


## ------------------------------------------------------------------------
plot(lm_car)


## ------------------------------------------------------------------------
ggplot(car_price, aes(x = income, y = price)) + 
  theme_bw() +
  geom_point(shape = 1, alpha = 1/2) + 
  geom_smooth() +
  geom_abline(intercept = lm_car$coef[1], slope = lm_car$coef[2], colour = "red") 


## ------------------------------------------------------------------------
new <- data.frame(income = 60000) # set up a new data frame
new_pred <- predict(lm_car, newdata = new) # call predict with new df
new_pred


## ----R challenge----------------------------------------------------------

