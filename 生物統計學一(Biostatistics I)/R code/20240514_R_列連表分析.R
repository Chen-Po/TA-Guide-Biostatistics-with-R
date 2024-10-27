studata1 <- read.csv(file.choose(), header = TRUE)

#### Contingency Table ####
table(studata1$AllPass) # 1: Yes, 2: No, 3: Do not know

allpass_new <- ifelse(studata1$AllPass == 1 , 1, 0)
table(allpass_new)
table(allpass_new, studata1$Gender)

chisq.test(table(allpass_new, studata1$Gender), correct = F)
chisq.test(table(allpass_new, studata1$Gender), correct = T)
1 - pchisq(0.52122, 1)

table(studata1$AllPass, studata1$Gender)
fisher.test(table(studata1$AllPass, studata1$Gender))