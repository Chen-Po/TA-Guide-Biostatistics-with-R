studata <- read.table(file.choose(), header = TRUE, sep = ",")

###########################
#### One-sample z-test ####
###########################
studata$Age
na.omit(studata$Age)
age <- na.omit(studata$Age)
z_obs <- (mean(age) - 21) / (4 / sqrt(length(age)))
z_obs
2 * pnorm(z_obs)

z_obs <- (mean(age) - 18) / (4 / sqrt(length(age)))
z_obs
2 * (1 - pnorm(z_obs))
?t.test

###########################
#### One-sample t-test ####
###########################
t_obs <- (mean(age) - 21) / (sd(age) / sqrt(length(age)))
t_obs
2 * pt(t_obs, df = length(age) - 1)

t.test(studata$Age, alternative = "two.sided", mu = 21)

#Confidence interval
mean(na.omit(studata$Age)) + qt(0.975, df = 49) * (sd(na.omit(studata$Age)) / sqrt(length(na.omit(studata$Age))))
mean(na.omit(studata$Age)) - qt(0.975, df = 49) * (sd(na.omit(studata$Age)) / sqrt(length(na.omit(studata$Age))))


#### Comparison of two means
var.test(studata$Age ~ studata$Department)

t.test(studata$Age ~ studata$Department, var.equal = F)
t.test(Age ~ Department, var.equal = F, data = studata)

t.test(studata$Credit_Last, studata$Credit_Current, paired = T)


###########################
######## Excecise #########
###########################
t.test(studata$Ht, alternative = "two.sided", mu = 165)

studata_female <- studata[which(studata$Gender == 0), ]

t.test(studata_female$Ht, alternative = "two.sided", mu = 160)

var.test(studata$Ht ~ studata$Gender)

t.test(studata$Ht ~ studata$Gender, var.equal = T)
t.test(Ht ~ Gender, var.equal = T, data = studata)

t.test(studata$Credit_Last, studata$Credit_Current, paired = T)

