# Clase semana 11
# Prueba de t de muestras dependientes


datos <- read.csv("Clases/mainproduccion.csv", header = T)
datos$Tiempo <- as.factor(datos$Tiempo)

boxplot(datos$Kgsem ~ datos$Tiempo, col="lightblue",
        xlab="Tiempo",
        ylab="Semilla (kg)")

t.test(datos$Kgsem ~ datos$Tiempo, paired =TRUE)


