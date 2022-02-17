# MAGT
# Semana 5 
# 16/02/2022


url <- paste0("https://raw.githubusercontent.com/mgtagle/",
"PrincipiosEstadistica2021/main/cuadro1.csv")

inventario <- read.csv(url)
summary(inventario)

inventario$Especie <- as.factor(inventario$Especie)
summary(inventario)
inventario$Posicion <- as.factor(inventario$Posicion)
summary(inventario)

# Obtener una tabla de frecuencia para las variables Especie
# y Posición. Usar la función table

freq.sp <- table(inventario$Especie)

porciento <- freq.sp/sum(freq.sp)*100

freq.ps <- table(inventario$Posicion)

# Porcentaje de posición

por.pos <- freq.ps/sum(freq.ps)*100

barplot(freq.sp, col="red", las =1, border = NA)
barplot(porciento, col="grey", las =1)

barplot(freq.ps, las=1, col="lightblue", border=NA)


pie(por.pos, col=topo.colors(4),
    labels = paste(levels(inventario$Posicion), por.pos, "%"))


pie(freq.sp, col = topo.colors(3),
    labels = paste(levels(inventario$Especie), freq.sp, "ind"))


# Subset

Sp.FC <- subset(inventario, inventario$Especie !="H")

boxplot(Sp.FC$Altura ~ Sp.FC$Especie)

t.test(Sp.FC$Altura ~ Sp.FC$Especie, var.equal=T)

