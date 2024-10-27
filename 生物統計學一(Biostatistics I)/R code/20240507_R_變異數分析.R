studata1 <- read.csv(file.choose(), header = TRUE)

#### ANOVA ####
bartlett.test(Ht ~ Satisfy_Body, studata1)
bartlett.test(studata1$Ht ~ studata1$Satisfy_Body)

aov(Ht ~ as.factor(Satisfy_Body), studata1)
anova_test <- aov(Ht ~ as.factor(Satisfy_Body), studata1)
summary(anova_test)

pairwise.t.test(studata1$Ht, studata1$Satisfy_Body, p.adjust.method = "bonf")

boxplot(studata1$Ht ~ studata1$Satisfy_Body)

