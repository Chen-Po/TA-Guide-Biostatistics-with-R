#### CRUD ####
id <- c(1:4)
age <- c(25, 30, 35, 40)
sex <- c("male", "male", "female", "female")
(zz <- data.frame(id, age, sex))

(zz <- data.frame("id" = c(1:4),
                  "age" = c(25, 30, 35, 40),
                  "sex" = c("male", "male", "female", "female")))

zz$sex
zz[, 3]
zz[2:4, ]

zz$age <- c(10, 10, 10, 10)
zz

zz$grade <- c(3, 5, 3, 7)
zz

zz$sex <- NULL
zz

#### Data import ####
mydata <- read.table("hersdata.csv", header = TRUE, sep = ",")
View(mydata)
head(mydata); tail(mydata)
colnames(mydata)
dim(mydata)

#### export file ####
write.table(data, "", row.names = TRUE, sep = ",")
write.csv(data, "", row.names = TRUE)
?write.table

#### work directory ####
getwd()
setwd("")
?getwd()

mydata2 <- read.table("hersdata.csv", header = TRUE, sep = ",")

#### calculate ####
(8 + 9 - 10) * 3 / 10
4 ** 3
4 ^ 3
sqrt(81)
81 ** 0.5
11 %/% 5
11 %% 5
round(0.123456789, 5)

aa <- c(1, 2, 3, 4, 5)
bb <- c(2, 4, 6, 8, 9)
cc <- c(2, 7, 8)

aa / 2
aa + bb
aa - bb
aa * bb
aa ** bb
aa / bb
aa * cc

#### statistical functions ####
####        vector         ####
xx <- c(1:100)
sum(xx)
var(xx)
mean(xx)
max(xx)
min(xx)

####  matrix or dataframe  ####
(yy <- matrix(1:25, 5, 5, byrow = TRUE))
rowSums(yy)
rowMeans(yy)
colSums(yy)
colMeans(yy)

(zz <- matrix(1:20, 5, 4, byrow = TRUE))
yy %*% zz


#### Data combination ####
id <- c(3, 1, 4, 2, 5, 6)
math <- c(90, 60, 80, 88, 65, 10)
(data1 <- cbind(id, math))

(data1 <- rbind(data1, c(7, 100)))

id <- c(1:6)
age <- c(20, 25, 30, 33, 34, 40)
sex <- c("M", "M", "F", "M", "F", "F")
(data2 <- data.frame(id, age, sex))


(data3 <- merge(data1, data2, by = "id"))
?merge

id <- c(4:9)
age <- c(20, 25, 30, 33, 34, 40)
sex <- c("M", "M", "F", "M", "F", "F")
(data2 <- data.frame(id, age, sex))

#### logic ####
x <- 5
y <- 10

x > 3
x < 7
x >= 6
x <= 5
x == 5
y != 10

x %in% c(1:6)
x > 4 | y > 9
x > 4 & y < 9

#### ifelse #####
z <- c(1:7)
(zz <- ifelse(z > 1, "Yes", "No"))
(zz <- ifelse(z > median(z), 1, 0))

#### Data selection ####
mydata$BMI > 40
which(my$BMI > 40)
length(which(mydata$BMI > 40))
mydata[which(mydata$BMI > 40), ]
data_smoke <- indata[which(mydata$smoking == "yes"), ]
data_nosmoke <- indata[which(mydata$smoking != "yes"), ]
dim(data_smoke)
dim(data_nosmoke)

subset(mydata, BMI > 40, select = c(age, diabetes, BMI))

