# Clase 3
# Jorge Alexis Luna Robles
# 23/08/2022


# Importar datos en formato csv de excel ----------------------------------

est<-read.csv("Clases/Cumbres1.csv", header = T)
head(est) # Revisar los primeros seis datos
tail(est) # Revisar los ultimos seis datos

viv <- read.csv("Clases/vivero.csv", header = T)

boxplot(viv$IE ~ viv$Tratamiento)
viv$Tratamiento <- as.factor(viv$Tratamiento)
summary(viv)


