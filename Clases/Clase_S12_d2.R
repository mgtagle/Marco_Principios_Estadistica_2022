
anacahuita <- read.csv("Clases/DATOS.csv", header = T)

library(dplyr)
ana <- anacahuita%>%
  filter(ESPECIE=="Anacahuita")
boxplot(ana$ALT ~ ana$TIEMPO)
ana$TIEMPO <- as.factor(ana$TIEMPO)
boxplot(ana$ALT ~ ana$TIEMPO)
t.test(ana$ALT ~ ana$TIEMPO, paired= TRUE)
hist(ana$ALT)
which(ana$ALT < 2)
length(ana$TIEMPO)


ana2018 <- ana %>% 
  filter(TIEMPO == "2018")

ana2020 <- ana %>% 
  filter(TIEMPO == 2020)

t.test(ana$ALT ~ ana$TIEMPO, var.equal=T)
