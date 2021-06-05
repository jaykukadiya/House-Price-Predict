library("readxl")
read_excel("datahouse.xlsx")

house <- read_excel("datahouse.xlsx")

df <- data.frame(house)

print (df)

data(df)

data (df)

data(house)

data(df)
head(df)

install.packages("caret")

library(caret)
# Simple linear regression model (lm means linear model)
# model <- train(mpg ~ wt,
#                data = mtcars,
#                method = "lm")

# Multiple linear regression model
model <- train(price ~ .,
               data = df,
               method = "lm")

# Ridge regression model
# model <- train(mpg ~ .,
#                data = mtcars,
#                method = "ridge") # Try using "lasso"

fitControl <- trainControl(method = "repeatedcv",   
                           number = 10,     # number of folds
                           repeats = 10)    # repeated ten times

model.cv <- train(price ~ .,
               data = df,
               method = "lasso",  # now we're using the lasso method
               trControl = fitControl)  

model.cv

library(caret)
fitControl <- trainControl(method = "repeatedcv",   
                           number = 10,     # number of folds
                           repeats = 10)    # repeated ten times

model.cv <- train(mpg ~ .,
               data = mtcars,
               method = "lasso",  # now we're using the lasso method
               trControl = fitControl)  

model.cv

install.packages(10-fold CV)

install.packages("10-fold CV")

fitControl <- trainControl(method = "repeatedcv",   
                           number = 10,     # number of folds
                           repeats = 10)    # repeated ten times

model.cv <- train(price ~ .,
               data = df,
               method = "lasso",  # now we're using the lasso method
               trControl = fitControl)  

model.cv

install.packages("elasticnet")

fitControl <- trainControl(method = "repeatedcv",   
                           number = 10,     # number of folds
                           repeats = 10)    # repeated ten times

model.cv <- train(price ~ .,
               data = df,
               method = "lasso",  # now we're using the lasso method
               trControl = fitControl)  

model.cv

fitControl <- trainControl(method = "repeatedcv",   
                           number = 10,     # number of folds
                           repeats = 10)    # repeated ten times

lambdaGrid <- expand.grid(lambda = 10^seq(10, -2, length=100))

model.cv <- train(price ~ .,
               data = df,
               method = "lasso",  # now we're using the lasso method
               trControl = fitControl, 
               preProcess = c('scale', 'center'),
               tuneGrid = lambdaGrid,   # Test all the lambda values in the lambdaGrid dataframe
               na.action = na.omit)
model.cv

fitControl <- trainControl(## 10-fold CV
                           method = "repeatedcv",
                           number = 10,
                           repeats = 10,
                           search = "random")  # hyper-parameters random search 

model.cv <- train(price ~ .,
               data = df,
               method = "ridge",
               trControl = fitControl,
               preProcess = c('scale', 'center'),
               na.action = na.omit)

model.cv

ggplot(varImp(model.cv))

predictions <- predict(model.cv, df)

predictions


