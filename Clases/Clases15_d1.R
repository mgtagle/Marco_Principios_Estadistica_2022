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


geiser.lm <- lm(geiser$eruptions ~ geiser$waiting)
summary(geiser.lm)


plot(geiser$waiting, geiser$eruptions, pch=19,
     xlab= "Tiempo de espera entre erupciones (min)",
     ylab="Duración de la erupción (min)",
     col="gray",
     main="Geyser Old Faithfull")
abline(geiser.lm, col="red")
text(75,2.7, "Y=-1.874+0.075 * x")
text(75,2, "r^2=0.81*")
