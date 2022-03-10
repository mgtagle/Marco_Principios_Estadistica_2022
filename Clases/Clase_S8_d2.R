# Clase Semana 8
# Revisar datos de madera
# BD maderas

madera <- read.csv("Clases/Madera.csv", header=T)

madera$Sp <- as.factor(madera$Sp)


boxplot(madera$Peso_gr ~ madera$Sp)

library(dplyr)

bar <- madera %>% 
  filter(Sp=="Bar")


# Comparación de una media teorética Mu=8.0 para SP =Barreta

mean(bar$Peso_gr)


t.test(bar$Peso_gr, mu=7.4)



