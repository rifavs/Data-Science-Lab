library(class)
survey <- read.csv("C:/Users/More/Desktop/rprogram/survey.csv")
survey$Z <- as.factor(survey$Z)
student <- data.frame(X=5,Y=7)
survey1 <- survey[,1:2]
pred <- knn(survey1,student,survey$Z,k=3)
cat("Predicted classification of students:\n")
print(pred)