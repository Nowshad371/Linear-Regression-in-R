
#Multiple linear regression is usful for modelling the relationship between 
#a numaric outcome or dependent variable (Y) and multiple explanatory or independent 
#variable (X)

getwd()
lung = read.csv(file ="C:/Users/Nowshad/Documents/LungCapData.csv")
View(lung)
attach(lung)

names(lung)
class(ï..LungCap)

class(Smoke)

Smoke = as.factor(Smoke)
class(Smoke)

levels(Smoke)


?lm

#Fit a model using Age and height as X-variables


model1 <- lm(ï..LungCap ~ Age + Height)

#Getting summary of the model

summary(model1)

#here we can see Multiple R-squared:  0.843 which means approximately 84% of variation
#in lung capacity can be explained by our model (Age and Height)

#Again we can see F-statistic:  1938 on 2 and 722 DF,  p-value: < 2.2e-16
#which means this test the null hypothesis that all the model coefficient are 0
#In our example here it tests specificly the slope for Age and height is 0

#(Intercept) -11.747065 means the estimated mean Y value when all Xs are 0






#let calculate  pearsons correlation between age and height


cor(Age,Height,method = "pearson")

#we can see the correlation between age and height are very high.
#The collinearity between age and height means that we should not directly 
#interpet the slope (e.g Age), as the effect of age on lung capacity adjusting for 
#height
#this high correlation between age and height are suggests that these two effects
#are somewhat bounded together


#we can also produce a confidence interval for the model coefficients
confint(model1,conf.level = 0.95)

#Lets make another linear model using all x variables

model2 <- lm(ï..LungCap~ Age + Height + Smoke + Gender + Caesarean)


#Ask for the salary of the model

summary(model2)


#Check the regression diagnostic plots for the model
plot(model2)

#here in 1st plot we can see the relationship between Age, Height and lung capacity
#is approximately linear, the variation looks constant

#In 2nd plot, lung capacity given age and height is approximately normal