# Clase Semana 8
# Revisar longitud y ancho de la semillas
# Encino rojo

semilla <- read.csv("Clases/BaseDeDatos_estadistica.csv", header=T)


mean(semilla$Longitud_mm)
mean(semilla$Diametro_mm)

boxplot(semilla$Longitud_mm)
boxplot(semilla$Diametro_mm)


# Indetificar los cuantiles Longitud
quantile(semilla$Longitud_mm, 0.25)
quantile(semilla$Longitud_mm, 0.5)
quantile(semilla$Longitud_mm, 0.75)
quantile(semilla$Longitud_mm, 1)


# Indetificar los cuantiles Diametro
quantile(semilla$Diametro_mm, 0.25)
quantile(semilla$Diametro_mm, 0.5)
quantile(semilla$Diametro_mm, 0.75)
quantile(semilla$Diametro_mm, 1)



# Tablas de frecuencia para semillas

numero <- table(semilla$Cond)
round(numero/6,1)