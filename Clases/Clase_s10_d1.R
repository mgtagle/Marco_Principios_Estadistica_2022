# Clase Semana 10
# Revisar datos peso de madera 2x2x2
# BD madera

madera <- read.csv("Clases/Madera.csv", header=T)

madera$Sp <- as.factor(madera$Sp)


library(dplyr)

bar <- madera %>% 
  filter(Sp=="Bar")


shapiro.test(bar$Peso_gr)

hist(bar$Peso_gr, col="red")

chp <- madera %>% 
  filter(Sp=="Chp")

hist(chp$Peso_gr, col="green")


boxplot(madera$Peso_gr ~ madera$Sp,  col="lightgreen")

boxplot(bar$Peso_gr, chp$Peso_gr, col="lightgreen")





url <- "https://raw.githubusercontent.com/mgtagle/Marco_Principios_Estadistica_2022/main/Clases/Semillas.csv"
semillas <- read.csv(url)
