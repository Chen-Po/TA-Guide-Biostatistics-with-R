#### CRUD ####
id <- c(1:4)
age <- c(25, 30, 35, 40)
sex <- c("male", "male", "female", "female")
(zz <- data.frame(id, age, sex))

zz$sex
zz[, 3]
zz[2:4, ]

zz$age <- c(10, 10, 10, 10)
zz$grade <- c(3, 5, 3, 7)

zz$sex <- NULL

#### Data import ####
data1 <- read.table(file.choose(), header = TRUE, sep = ",")
View(data1)
head(data1); tail(data1)
colnames(data1)
dim(data1)

#### Data selection ####
data_smoke <- data1[which(data1$smoking == "yes"), ]
data_nosmoke <- data1[which(data1$smoking != "yes"), ]
dim(data_smoke)
dim(data_nosmoke)

subset(data1, BMI > 40, select = c(age, diabetes, BMI))


#### Continuous variable ####
str(data1)
summary(data1)
summary(data1$BMI)
max(data1$BMI, na.rm = TRUE)
min(data1$BMI, na.rm = TRUE)
sum(data1$BMI, na.rm = TRUE)
sum(data1$BMI)

mean(data1$BMI, na.rm = TRUE)
mean(data_smoke$BMI, na.rm = TRUE)
mean(data_nosmoke$BMI, na.rm = TRUE)
sd(data1$BMI, na.rm = TRUE)
var(data1$BMI, na.rm = TRUE)

quantile(data1$BMI, probs = c(0.25, 0.5, 0.75), na.rm = TRUE)
median(data1$BMI, na.rm = TRUE)
IQR(data1$BMI, na.rm = TRUE)

#### Discrete data ####
table(data1$raceth)
table(data1$smoking)

table(data1$raceth, data1$diabetes)
table1 <- table(data1$raceth, data1$diabetes)
colnames(table1)
rownames(table1)
colnames(table1) <- c("no-diabetes", "diabetes")
table1

prop.table(table(data1$smoking))
prop.table(table1)
prop.table(table1, 1)
prop.table(table1, 2)

