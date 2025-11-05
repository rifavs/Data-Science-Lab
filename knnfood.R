library(class)
food <- read.csv("C:/Users/More/Desktop/rprogram/food.csv")
food$FoodType <- as.factor(food$FoodType)
tomato <- data.frame(Ingredient="tomato",Sweetness=6,Crunchiness=4)
food1 <- food[,2:3]
tomato1 <- tomato[,2:3]
k <- as.numeric(readline(prompt="Enter the value of k:"))
pred <- knn(food1,tomato1,food$FoodType,k)
cat("Predicted food type of tomato:\n")
print(pred)