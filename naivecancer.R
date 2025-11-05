library(class)
library(gmodels)

wbcd <- read.csv("C:/Users/More/Desktop/rprogram/wisc_bc_data.csv")
normalize <- function{
	return((x - min(x)) / (max(x) - min(x)))
}
wbcd_n <- as.data.frame(lapply(wbcd[3:31],normalize))
wbcd_train <- wbcd_n[1:469,]
wbcd_test <- wbcd_n[470:569,]
wbcd_train_labels <- wbcd[1:469,2]
wbcd_test_labels <- wbcd[470:569,2]
cars_test_pred <- predict(classifier_cl,cars_test)
print(cars_test_pred)