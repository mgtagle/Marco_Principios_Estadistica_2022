# Importar datos de semillas
# 02/03/2021



semilla <- read.csv("Clases/BaseDeDatos_estadistica.csv", header=T)

write.table(semilla, "Clases/Semillas.csv", sep=",")
write.csv(semilla, file="Clases/Semillas.csv")

graf.sem <- boxplot(semilla$Peso_gr)

# Indentificar valor extremo mayor a 40
which(semilla$Peso_gr >40)
# revisar toda la fila 524
semilla[524, ]


# Indetificar semillas con valores menores al rango
graf.sem$out

which(semilla$Peso_gr <=2.671)

# Indetificar los cuantiles
quantile(semilla$Peso_gr, 0.25)
quantile(semilla$Peso_gr, 0.5)
quantile(semilla$Peso_gr, 0.75)
quantile(semilla$Peso_gr, 1)


# Tablas de frecuencia para semillas

numero <- table(semilla$Cond)
round(numero/6,1)

