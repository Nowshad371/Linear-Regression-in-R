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

plot(Age,ï..LungCap,main = "Scattered plot",las = 1)

cor(ï..LungCap,Age)

help(lm)

#lm means Linear Models

#lm(y~x) should place y before x.
mod <- lm(ï..LungCap~Age)

summary(mod)

attributes(mod)


mod$coefficients

plot(Age,ï..LungCap,main = "Scattered plot",las = 1)

abline(mod,lwd = 4,col = 2)


#here 
# col means color and lwd means thickness of the line


#we can produce confidence interval for the coefficients using the 
#"confint" command
confint(mod)

#we can change the level of the confidence interval also

confint(mod,level = 0.99)

#we can see anova table also
anova(mod)


#if we take the square root of the 2.3 (mean square of residuals)
#we will get the same vale of residual standard error
#(can be slightly different due to rounding)
summary(mod)

sqrt(2.3)





