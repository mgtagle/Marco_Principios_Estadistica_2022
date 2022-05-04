# Clase semana 14 dia 1
# MAGT
# Ejercicio de regresión

semilla <- read.csv("Clases/BaseDeDatos_estadistica.csv", header=T)
semilla

# Plot de Diámetro vs Peso en gramos

plot(semilla$Diametro_mm, semilla$Peso_gr,
     pch=20,
     col="lightblue",
     xlab = "Diámetro de semilla (mm)",
     ylab = "Peso de semilla (gr)")

# lm función que me ayuda a determinar alfa y beta de la regresión

sem.lm <- lm(semilla$Peso_gr ~ semilla$Diametro_mm)
summary(sem.lm)

semilla$yprima <- round(-4.93388+ 0.53178*semilla$Diametro_mm,2)

# Agregra la línea de tendencia central usando abline
plot(semilla$Diametro_mm, semilla$Peso_gr,
     pch=20,
     col="lightblue",
     xlab = "Diámetro de semilla (mm)",
     ylab = "Peso de semilla (gr)")
abline(sem.lm,
       col="blue")
text(19, 2, "Y=-4.934+ 0.532*x")
text(19,1.5, "Regresión lineal")


semilla$Ajustados <- round(sem.lm$fitted.values,2)
sem.lm$coefficients
sum(sem.lm$residuals)


# Encontrar los siguienets valores aplicando la formúla de reg
# 18, 11, 14, 16,15

valores <- c(12.5, 14, 15, 16, 18)
-4.93388+ 0.53178*valores
