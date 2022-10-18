#----------------------------------------------------------------------
#plot the BMI
#-----------------------------------------------------------------------
dataset <- bmiDataset
bmi<- bmi
female <- female
male <- male
  

#draw a box plot of BMI
boxplot(bmiDataset$BMI)

#define male and female
female <- bmiDataset %>% filter(gender=="feminine")
male <- sw[which(bmiDataset$gender=="masculine"), ]

#boxplot of BMI and Gender
boxplot(bmiDataset$bmi[bmiDataset$gender=="feminine"],
        bmiDataset$bmi[bmiDataset$gender=="masculine"])
boxplot(bmiDataset$bmi ~ bmiDataset$gender, col = c("red","blue"))

#histogram plot for BMI and Gender
hist(bmiDataset$bmi[bmiDataset$gender=="feminine"],
        bmiDataset$bmi[bmiDataset$gender=="masculine"])
hist(bmiDataset$bmi ~ bmiDataset$gender, col = c("red","blue"))

