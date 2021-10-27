
#Usingful for making some cross tabulations for a variable, or fitting a regression 
#model when the linearity assumptions is not valid for the variable
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


?cut

#we will create height categoris of A <50,B = 50-55,C=55-60,D=60-65,E=70-100
#here 0 is lower bound and 100 is upper bound

#by default the interval are left-open and right closed 
#example - an observation of 60 would in th 55 to 60 bin

cutHeight = cut(Height, breaks = c(0,50,55,60,65,70,100),
                labels = c("A","B","C","D","E","F"))

cutHeight[1:10]
Height[1:10]

#to make an observation of 60  in  60 to 65 bin 
cutHeightRight = cut(Height, breaks = c(0,50,55,60,65,70,100),
                labels = c("A","B","C","D","E","F"),right = F)


cutHeightRight[1:10]
