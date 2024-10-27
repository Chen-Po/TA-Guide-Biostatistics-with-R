setwd("/Users/liaochenpo/Desktop/Desktop/Course/助教/生統一/2024/助教課/20240521_R_考前複習/")

# 1
hwdata <- read.csv(file.choose(), header = T)
head(hwdata)
dim(hwdata)

# 2
hwdata$BMI <- hwdata$Weight / (hwdata$Height/100) ** 2


# 3
colnames(hwdata)
mydata <- hwdata[, c("Sex", "Age", "BMI", "Pulse")]
head(mydata)

# 4
length(which(hwdata$Sex == "男"))
mean(hwdata$BMI[which(hwdata$Sex == "男")])
length(which(hwdata$Sex == "女"))
mean(hwdata$BMI[which(hwdata$Sex == "女")])


# 5
mydata$heart <- ifelse(mydata$Pulse >= 90, 1, 0)
length(which(mydata$heart == 1))

# 6
dim(hwdata)
summary(hwdata$Weight); sd(hwdata$Weight); IQR(hwdata$Weight)
summary(hwdata$TG); sd(hwdata$TG); IQR(hwdata$TG)

# 7
summary(hwdata$Weight[which(hwdata$Sex == "男")])
sd(hwdata$Weight[which(hwdata$Sex == "男")])
IQR(hwdata$Weight[which(hwdata$Sex == "男")])

summary(hwdata$TG[which(hwdata$Sex == "男")])
sd(hwdata$TG[which(hwdata$Sex == "男")])
IQR(hwdata$TG[which(hwdata$Sex == "男")])

# 8
hwdata$BMI_group <- ifelse(hwdata$BMI<18.5, "1", ifelse(hwdata$BMI>= 24, "3", "2"))
table(hwdata$BMI_group)
table(hwdata$BMI_group, hwdata$Sex)
prop.table(table(hwdata$BMI_group, hwdata$Sex), 2)

# 9
boxplot(hwdata$BMI ~ hwdata$Sex, xlab = "Sex", ylab = "BMI", 
        main= "Boxplot of BMI", col = "steelblue")

# 10
barplot(table(hwdata$BMI_group), xlab = "BMI group", ylab = "counts", 
        main= "Barplot of BMI group", col = "steelblue")


# 11
t.test(hwdata$Pulse, alternative = "two.sided", mu = 80)

# 12
var.test(hwdata$Pulse ~ hwdata$Sex)
t.test(hwdata$Pulse ~ hwdata$Sex, var.equal=T)

# 13
hwdata$Age_group <- ifelse(hwdata$Age <= 30, "1", ifelse(hwdata$Age > 50, "3", "2"))
summary(aov(Cholesterol ~ as.factor(Age_group), data = hwdata))
pairwise.t.test(hwdata$Cholesterol, hwdata$Age_group, p.adjust.method = "bonf")

bartlett.test(hwdata$Pulse ~ hwdata$Sex)
boxplot(hwdata$Cholesterol ~ hwdata$Age_group)
