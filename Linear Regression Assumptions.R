#In reality, the assumptions of a linear model cannot be met in perfectly, 
#we must still check if they are reasonable assumptions to work with


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



cor(ï..LungCap,Age)



#Examine the assumptions for a model of the relationship between age 
#and the lung capacity 

#Lung capacity = Y, outcome, dependent variable





#lets produce one Scattered plot
plot(Age,ï..LungCap,main = "Scattered plot",las = 1)

#lm(y~x) should place y before x.
mod <- lm(ï..LungCap~Age)

summary(mod)

attributes(mod)

#lets draw a regression line in the plot
abline(mod,lwd = 4,col = 2)


#here we can say the line is mean of Y given X;
#we can also explian this as the intercept or Y = b + by (b-not plus b-1 times X )

#the residual or error are labeled with an e
#error = Y(observed value) - Y (predicted value)


                        #ASSUMPTIONS

#1. The Y-values (or error value e) are independent 
#2. The Y-values can be expressed as a linear function of the X variable 
#3. Variation of observation around the regression line (the residual SE) is 
#constant (homoscedasticity)

#For given value of X,Y values (ot the error) terms are normally distributed





plot(mod)

#1nd plot: here 1nd plot is to see Residuals error where if the linearnity assumptions
#is made, we should see no patterns in the graph, the red line should be fairly flat.
#If the variation is constant we should see no pattern in the graph
#Point in the graph would be like cloud

#2rd plot: This is known as Q-Q plot/ quantile quantile plot
# Here Y axis is the ordered, observed, standardized residuals
#On the X axis is the ordered theoritical residuals (this is what we expact the 
#residuals to be if the error or the residuals are truely normally distributed)

#If our Y values or error or residuals terms are normally distributed points in 
#the graph should fall roughly on a daigonal line (exactly what we got in graph)

#The 3rd and fouth plot can also help us to identify non-lineariteis, non constant 
#as well as other troublesome observations

#If we want to see all four graph we can 

par(mfrow = c(2,2))
plot(mod)







