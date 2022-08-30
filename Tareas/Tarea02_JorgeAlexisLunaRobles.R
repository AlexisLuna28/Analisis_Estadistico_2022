
# Importar datos de trabajo -----------------------------------------------

rm (list = ls ()) 
datos <- read.csv("Tareas/cuadro1.csv", header = T) 
head(datos) 

H.media <- subset(datos$Altura, datos$Altura <= mean (datos$Altura)) 
H.16 <- subset (datos$Altura, datos$Altura < 16.5)

Vecinos.3 <- subset(datos$Vecinos, datos$Vecinos <= 3)
Vecinos.4 <- subset(datos$Vecinos, datos$Vecinos >4)  

Vecinos.3
Vecinos.4 

DBH.media <- subset(datos$Diametro, datos$Diametro < mean (datos$Diametro)) 
DBH.16 <- subset (datos$Diametro, datos$Diametro > 16)

DBH.media
DBH.16


nuevas.filas=data.frame(Arbol=c(51,52,53,54,55,56,57,58,59,60),
                        Fecha=c(13,12,12,15,14,13,13,13,14,15),
                        Especie=c("Cedro_rojo", "Tsuga_heterofila", "Douglasiana_verde", "Cedro_rojo", "Tsuga_heterofila", 
                                  "Douglasiana_verde", "Cedro_rojo", "Tsuga_heterofila", "Douglasiana_verde", "Cedro_rojo"),
                        Posicion=c("D", "S", "C", "C", "D", "D", "D", "S", "D", "D"),
                        Vecinos=c(2, 3, 3, 2, 4, 4, 5, 5, 3, 3),
                        Diametro=c(21, 23, 15, 18, 26, 14, 16, 14, 13, 12),
                        Altura=c(11, 13, 13, 12, 11, 15, 13, 11, 14, 12)) 

datos = rbind(datos, nuevas.filas) 


sum(with(datos, Diametro <= 16.9))   

sum(with(datos, Altura > 18.5))  

#Diametro, Altura y Vecinos no dan los resultados 

hist(H.media) 
hist(H.16)  
hist($Altura) 

hist($Vecinos)  
hist(vecinos.3) 
hist(Vecinos.4) 


mean(H.media) 
mean(H.16)  
mean($Altura) 

mean($Vecinos)  
mean(Vecinos.3) 
mean(Vecinos.4) 

mean($Diametro) 
mean(DBH.media) 
mean(DBH.16) 


sd(H.media)  
sd(H.16)  
sd($Altura) 

sd($Vecinos)  
sd(vecinos.3) 
sd(Vecinos.4) 

sd($Diametro) 
sd(DBH.media) 
sd(DBH.16) 