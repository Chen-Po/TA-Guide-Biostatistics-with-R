#### Introduction
1 + 1
1 + 1; 2 + 2; 3 + 3
sum(2, 
    3,
    4)

#### Assignment ####
X <- 1
x <- 2
.aa <- 6
.aa
.123aa <- 2
.aa123 <- 2
age_data <- 25

x <- 5
x = 5
5 -> x
assign("x", 5)

#### Data types ####
(aa <- "AA")
(bb <- 100)
(cc <- c(1, 3, 4, 5, 6, 7))
(dd <- matrix(cc, 2, 3, byrow = T))
(ee <- data.frame(Name = c("John", "Alice"), Age = c(25, 30)))
(ff <- list(c(1, 2, 3), c("A", "B")))

#### Vector ####
(xx <- c(1, 2, 3, 4, 5))
xx[2]
xx[2:4]
xx[c(1,3,4)]
xx[2] <- 100
xx[2:4] <- c(1,2,3)
xx[-3]
c(1, 2, 3, 4, "A")

length(xx)

#### Matrix ####
(yy <- matrix(data = c(1:6), nrow = 2, ncol = 3, byrow = FALSE))
yy[1, 2]
yy[, 2]
yy[2, ]
yy[1, 3] <- 100
yy[-1, -3]

dim(yy)

colnames(yy) <- c("C1", "C2", "C3")
rownames(yy) <- c("r1", "r2")
yy

#### Data frame ####
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

zz[, -1]

#### List ####
(ww <- list(xx, yy, zz))
ww[[1]]
ww[[2]]
ww[[3]]
ww[[3]]$age
ww[[3]] <- c(1,2,3)
ww[[2]] <- NULL
ww

#### txt / csv ####
mydata <- read.table(file = , header = TRUE, sep = "")
mydata <- read.table(file.choose() , header = TRUE, sep = ",")


#### Data ####
View(mydata)
head(mydata); tail(mydata)
head(mydata, 10)
dim(mydata)
colnames(mydata)

#### Export Data ####
write.table(x, file = , row.names = TRUE, sep = " ")
write.table(aaa, file = , row.names = TRUE, sep = ",")



