#train <- data.table::fread("examples/titanic/train.csv")
#test <- data.table::fread("examples/titanic/test.csv")

train <- read.csv("examples/titanic/train.csv", na.strings = "")
test <- read.csv("examples/titanic/train.csv", na.strings = "")

imputedage <- median(train[, "Age"], na.rm=TRUE)
train[ is.na(train[, "Age"]), "Age"] <- imputedage
test[ is.na(test[, "Age"]), "Age"] <- imputedage

train[, "IsFemale"] <- as.integer(as.character(train[, "Sex"]) == "female")
test[, "IsFemale"] <- as.integer(as.character(test[, "Sex"]) == "female")

fit <- glm(Survived ~ Pclass + IsFemale + Age, data=train, family="binomial")

head(predict(fit, newdata=test, type="response"), 10)
head(test[, "Survived"], 10)
