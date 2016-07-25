#ucitaj podatke za treniranje i testiranje
train = read.csv("trening.csv", header = TRUE, na.strings = c(""))
test = read.csv("test.csv", header = TRUE)

str(train)
#lazne varijable --> jedine dvije varijable koje su int(numeric, ne racunajuci Y).Postavljene na NULL
train$X15 = NULL
train$X21 = NULL

#pretvorba Y varijable za predvidanje u character, nakon toga u factor
train$Y <- as.character(train$Y)
train$Y <- as.factor(train$Y)

train$X1 = as.character(train$X1)
train$X1[train$X1 == "?"] = "167857"
train$X1 = as.numeric(train$X1)

train$X2 <- as.character(train$X2)
train$X2[train$X2 == "?"] = "2"
train$X2 = as.factor(train$X2)

train$X3 <- as.character(train$X3)
table(train$X3)
train$X3[train$X3 == "?"] = "2"
train$X3 = as.factor(train$X3)

train$X4 <- as.character(train$X4)
table(train$X4)
train$X4[train$X4 == "?"] = "2"
train$X4 = as.factor(train$X4)

train$X5 <- as.character(train$X5)
table(train$X5)
temp = train$X5 != "?"
temp = train[temp,]
temp$X5 <- as.numeric(temp$X5)
mean(temp$X5)
train$X5[train$X5 == "?"] = "35"
train$X5 = as.factor(train$X5)

train$X6 <- as.character(train$X6)
train$X7 <- as.character(train$X7)
train$X8 <- as.character(train$X8)
train$X9 <- as.character(train$X9)
train$X10 <- as.character(train$X10)
train$X11 <- as.character(train$X11)

table(train$X6) #0
table(train$X7) #0
table(train$X8) #0
table(train$X9)
table(train$X10)
table(train$X11)
#mjenjanje upitnika
train$X6[train$X6 == "?"] = "0"
train$X7[train$X7 == "?"] = "0"
train$X8[train$X8 == "?"] = "0"
train$X9[train$X9 == "?"] = "0"
train$X10[train$X10 == "?"] = "0"
train$X11[train$X11 == "?"] = "0"

train$X6 = as.factor(train$X6)
train$X7 = as.factor(train$X7)
train$X8 = as.factor(train$X8)
train$X9 = as.factor(train$X9)
train$X10 = as.factor(train$X10)
train$X11 = as.factor(train$X11)
#rjesavanje NA vrijednosti
train$X12 = as.character(train$X12)
train$X13 = as.character(train$X13)
train$X14 = as.character(train$X14)
train$X16 = as.character(train$X16)
train$X17 = as.character(train$X17)
train$X18 = as.character(train$X18)

temp <- is.na(train$X12)
train[temp, 13] = "0"

temp <- is.na(train$X13)
train[temp, 14] = "0"

temp <- is.na(train$X14)
train[temp, 15] = "0"

temp <- is.na(train$X16)
train[temp, 16] = "0"

temp <- is.na(train$X17)
train[temp, 17] = "0"

temp <- is.na(train$X18)
train[temp, 18] = "0"

train$X12 = as.numeric(train$X12)
train$X13 = as.numeric(train$X13)
train$X14 = as.numeric(train$X14)
train$X16 = as.numeric(train$X16)
train$X17 = as.numeric(train$X17)
train$X18 = as.numeric(train$X18)

train$X19 = as.character(train$X19)
train$X20 = as.character(train$X20)
train$X22 = as.character(train$X22)
train$X23 = as.character(train$X23)
train$X24 = as.character(train$X24)
train$X25 = as.character(train$X25)

temp = train$X19 != "?"
temp = train[temp,]
temp$X19 <- as.numeric(temp$X19)
mean(temp$X19)
train$X19[train$X19 == "?"] = "5849"
train$X19 = as.numeric(train$X19)

temp = train$X20 != "?"
temp = train[temp,]
temp$X20 <- as.numeric(temp$X20)
mean(temp$X20)
train$X20[train$X20 == "?"] = "6370"
train$X20 = as.numeric(train$X20)

temp = train$X22 != "?"
temp = train[temp,]
temp$X22 <- as.numeric(temp$X22)
mean(temp$X22)
train$X22[train$X22 == "?"] = "5181"
train$X22 = as.numeric(train$X22)

temp = train$X23 != "?"
temp = train[temp,]
temp$X23 <- as.numeric(temp$X23)
mean(temp$X23)
train$X23[train$X23 == "?"] = "4851"
train$X23 = as.numeric(train$X23)

temp = train$X24 != "?"
temp = train[temp,]
temp$X24 <- as.numeric(temp$X24)
mean(temp$X24)
train$X24[train$X24 == "?"] = "4749"
train$X24 = as.numeric(train$X24)

temp = train$X25 != "?"
temp = train[temp,]
temp$X25 <- as.numeric(temp$X25)
mean(temp$X25)
train$X25[train$X25 == "?"] = "5304"
train$X25 = as.numeric(train$X25)

train$X5 <- as.character(train$X5)
train$X5 <- as.numeric(train$X5)

##### ---- TRAIN GOTOV ---- #####
test$X15 = NULL
test$X21 = NULL

test$Y <- as.character(test$Y)
test$Y <- as.factor(test$Y)

test$X1 = as.character(test$X1)
temp <- test$X1 != "?"
temp <- test[temp,]
temp$X1 <- as.numeric(temp$X1)
mean(temp$X1)
test$X1[test$X1 == "?"] = "168579"
test$X1 = as.numeric(test$X1)

test$X2 <- as.character(test$X2)
test$X2[test$X2 == "?"] = "2"
test$X2 = as.factor(test$X2)

test$X3 <- as.character(test$X3)
table(test$X3)
test$X3[test$X3 == "?"] = "2"
test$X3 = as.factor(test$X3)

test$X4 <- as.character(test$X4)
table(test$X4)
test$X4[test$X4 == "?"] = "2"
test$X4 = as.factor(test$X4)

test$X5 <- as.character(test$X5)
table(test$X5)
temp = test$X5 != "?"
temp = test[temp,]
temp$X5 <- as.numeric(temp$X5)
mean(temp$X5)
test$X5[test$X5 == "?"] = "35"
test$X5 = as.factor(test$X5)

test$X6 <- as.character(test$X6)
test$X7 <- as.character(test$X7)
test$X8 <- as.character(test$X8)
test$X9 <- as.character(test$X9)
test$X10 <- as.character(test$X10)
test$X11 <- as.character(test$X11)

table(test$X6) #0
table(test$X7) #0
table(test$X8) #0
table(test$X9)
table(test$X10)
table(test$X11)

test$X6[test$X6 == "?"] = "0"
test$X7[test$X7 == "?"] = "0"
test$X8[test$X8 == "?"] = "0"
test$X9[test$X9 == "?"] = "0"
test$X10[test$X10 == "?"] = "0"
test$X11[test$X11 == "?"] = "0"

test$X6 = as.factor(test$X6)
test$X7 = as.factor(test$X7)
test$X8 = as.factor(test$X8)
test$X9 = as.factor(test$X9)
test$X10 = as.factor(test$X10)
test$X11 = as.factor(test$X11)

test$X12 = as.character(test$X12)
test$X13 = as.character(test$X13)
test$X14 = as.character(test$X14)
test$X16 = as.character(test$X16)
test$X17 = as.character(test$X17)
test$X18 = as.character(test$X18)

temp <- is.na(test$X12)
test[temp, 13] = "0"

temp <- is.na(test$X13)
test[temp, 14] = "0"

temp <- is.na(test$X14)
test[temp, 15] = "0"

temp <- is.na(test$X16)
test[temp, 16] = "0"

temp <- is.na(test$X17)
test[temp, 17] = "0"

temp <- is.na(test$X18)
test[temp, 18] = "0"

test$X12 = as.numeric(test$X12)
test$X13 = as.numeric(test$X13)
test$X14 = as.numeric(test$X14)
test$X16 = as.numeric(test$X16)
test$X17 = as.numeric(test$X17)
test$X18 = as.numeric(test$X18)

test$X19 = as.character(test$X19)
test$X20 = as.character(test$X20)
test$X22 = as.character(test$X22)
test$X23 = as.character(test$X23)
test$X24 = as.character(test$X24)
test$X25 = as.character(test$X25)

temp = test$X19 != "?"
temp = test[temp,]
temp$X19 <- as.numeric(temp$X19)
mean(temp$X19)
test$X19[test$X19 == "?"] = "5896"
test$X19 = as.numeric(test$X19)

temp = test$X20 != "?"
temp = test[temp,]
temp$X20 <- as.numeric(temp$X20)
mean(temp$X20)
test$X20[test$X20 == "?"] = "5936"
test$X20 = as.numeric(test$X20)

temp = test$X22 != "?"
temp = test[temp,]
temp$X22 <- as.numeric(temp$X22)
mean(temp$X22)
test$X22[test$X22 == "?"] = "5437"
test$X22 = as.numeric(test$X22)

temp = test$X23 != "?"
temp = test[temp,]
temp$X23 <- as.numeric(temp$X23)
mean(temp$X23)
test$X23[test$X23 == "?"] = "4905"
test$X23 = as.numeric(test$X23)

temp = test$X24 != "?"
temp = test[temp,]
temp$X24 <- as.numeric(temp$X24)
mean(temp$X24)
test$X24[test$X24 == "?"] = "4842"
test$X24 = as.numeric(test$X24)

temp = test$X25 != "?"
temp = test[temp,]
temp$X25 <- as.numeric(temp$X25)
mean(temp$X25)
test$X25[test$X25 == "?"] = "5698"
test$X25 = as.numeric(test$X25)

test$X5 <- as.character(test$X5)
test$X5 <- as.numeric(test$X5)

levels(test$X3) = levels(train$X3)
levels(test$X6) = levels(train$X6)
levels(test$X7) = levels(train$X7)
levels(test$X8) = levels(train$X8)



library(randomForest)

set.seed(1234)
#radi se model uz pomoc randomForesta
model <- randomForest(Y~.,data=train, replace=TRUE,ntree=1000)
pred <- predict(object = model, newdata = test)

finish <- data.frame(Id = rep(1:3000), Prediction = pred)

write.csv(finish, file = "AMMAR_FINAL.csv", row.names = F)
