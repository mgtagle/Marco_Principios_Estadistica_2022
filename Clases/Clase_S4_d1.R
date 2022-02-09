# MAGT
# 09/02/2022
# Sesión semana 4 Sala de computo

setwd("C:/Repositorio_GIT/Marco_Principios_Estadistica_2022/Clases")
# Importar datos ----------------------------------------------------------

vivero <- read.csv("BD_vivero.csv", header = TRUE)


# Estadística descriptiva -------------------------------------------------

# Medidas de tendencia central

mean(vivero$IE)
median(vivero$IE)
range(vivero$IE)
fivenum(vivero$IE)


boxplot(vivero$IE, horizontal = T, col="red")
hist(vivero$IE, ylim = c(0,12))


frec <- table(vivero$IE)
