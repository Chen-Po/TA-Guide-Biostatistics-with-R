#### descriptive statistics ####
data1 <- read.csv(file.choose(), header = TRUE)

summary(data1)
table(data1$smoking)
table(data1$raceth, data1$diabetes)

#### Statistical plot ####
stem(data1$BMI)
hist(data1$BMI, breaks = 7)

?hist

pie(table(data1$smoking))
barplot(table(data1$smoking))

plot(data1$LDL, data1$BMI)

boxplot(data1$BMI)
boxplot(data1$BMI ~ data1$raceth)

plot(data1$LDL, data1$BMI, 
     main = "Scatter plot of LDL and BMI", 
     xlab = "LDL", ylab = "BMI", 
     xlim = c(40, 400), ylim = c(15, 55),
     col = "darkgreen", pch = 16, cex = 1)

points(data1$LDL[data1$SBP > 170], data1$BMI[data1$SBP > 170], col = "darkorange1", pch = 16)

abline(mean(data1$BMI, na.rm = TRUE), 0, col = "red", lwd = 3, lty = 4)

#### save the plot ####
getwd()

jpeg("scatter plot.jpg", width = 4.25, height = 3.25, unit = "in", res = 800) 
plot(data1$LDL, data1$BMI, 
     main = "Scatter plot of LDL and BMI", 
     xlab = "LDL", ylab = "BMI", 
     xlim = c(50, 400), ylim = c(0, 55),
     col = "black", pch = 1)
dev.off()

