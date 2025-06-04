set.seed(20250506)
x <- rnorm(100, mean = 0, sd = 1)      
y <- rexp(100, rate = 1/5)   

par(mfrow = c(2, 2))
hist(x, freq = F, main = "Normal Distribution", col = rgb(0.3, 0.6, 0.9, 0.7))
lines(density(x), lwd = 2)                            
qqnorm(x, pch=16)
qqline(x, col = "red", lwd = 2)
grid()

hist(y, freq = F, main = "non-Normal Distribution", col = rgb(0.9, 0.6, 0.3, 0.7))
lines(density(y), lwd = 2)
qqnorm(y, pch=16)
qqline(y, col = "red", lwd = 2)
grid()

shapiro.test(x)
ks.test(x, "pnorm", mean(x), sd(x))


studata1 <- read.csv(file.choose())
colnames(studata1)
studata1 <- studata1[-1, ]

install.packages("BSDA")
library("BSDA")
qqnorm(studata1$Hours_Commute, pch=16)
qqline(studata1$Hours_Commute, col = "red", lwd = 2)
grid()


# Signed Test
SIGN.test(studata1$Hours_Commute, md = 5)

which(studata1$Hours_Commute > 5)
length(which(studata1$Hours_Commute > 5))
binom.test(29, 50, p = 0.5)

# Wilcoxon Signed Rank Test
wilcox.test(studata1$Credit_Last, studata1$Credit_Current, paired = TRUE)
wilcox.test(studata1$Credit_Last, studata1$Credit_Current, paired = TRUE, exact = FALSE)

# Wilcoxon rank sum test / Mann-Whitney U test
wilcox.test(studata1$Hours_Commute, studata1$Department, paired = F, exact = FALSE)

# Kruskal-Wallis Test
kruskal.test(studata1$Hours_Commute, studata1$County, exact = FALSE)

pairwise.wilcox.test(studata1$Hours_Commute, studata1$County, p.adjust.method = "bonf")

boxplot(studata1$Hours_Commute ~ studata1$County)



