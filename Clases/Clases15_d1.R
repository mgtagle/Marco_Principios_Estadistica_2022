# Clase semana 15 día 1
# Examen de regresión lineal
# Datos Geiser

geiser <- read.csv("Clases/erupciones.csv", header=T)

# revisar datos
plot(geiser$waiting, geiser$eruptions, pch=19,
     xlab= "Tiempo de espera entre erupciones (min)",
     ylab="Duración de la erupción (min)",
     col="gray",
     main="Geyser Old Faithfull")
