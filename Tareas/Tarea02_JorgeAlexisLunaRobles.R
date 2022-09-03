
# Importar datos de trabajo -----------------------------------------------

conjunto <- read.csv("cuadro1.csv", header = T) 

head(conjunto) 

# Selección de datos
H.media <- subset(conjunto$Altura, conjunto$Altura <= mean (conjunto$Altura))
H.media

H.16 <- subset (conjunto$Altura, conjunto$Altura < 16.5)
H.16

Vecinos_3 <- subset(conjunto$Vecinos, conjunto$Vecinos <= 3)
Vecinos_3

Vecinos_4 <- subset(conjunto$Vecinos, conjunto$Vecinos >4)
Vecinos_4 

DBH_media <- subset(conjunto$Diametro, conjunto$Diametro < mean (conjunto$Diametro))
DBH_media

DBH_16 <- subset (conjunto$Diametro, conjunto$Diametro > 16)
DBH_16


# Incluir la especie Cedro Rojo 
Cedro_Rojo <- subset (conjunto$Especie, conjunto$Especie == "C")
Cedro_Rojo

# Incluir las especies Tsuga hetorófila y Douglasia verde
Tsuga_Douglasia <- subset (conjunto$Especie, conjunto$Especie == conjunto$Especie[c(1, 4)])
Tsuga_Douglasia

# Observaciones menores o iguales a 16.9 de Diámetro
sum( with (conjunto, Diametro  <= 16.9))   

# Observaciones mayores a 18.5 de altura
sum( with (conjunto, Altura  > 18.5)) 

# Visualización de datos
hist (conjunto$Altura, main ="Altura" , xlab="Datos de Altura", ylab= "Frecuencia", col="Blue")

hist (H.media, main ="H.media" , xlab="Datos de Altura", ylab= "Frecuencia", col="Blue")

hist (H.16, main ="H.16",  xlab="Datos de Altura", ylab= "Frecuencia", col="Blue")

hist (conjunto$Vecinos, main ="Vecinos" , xlab="Datos de Vecinos", ylab= "Frecuencia", col="Red")

hist (Vecinos_3, main ="Vecinos_3" , xlab="Datos de Vecinos", ylab= "Frecuencia", col="Red")

hist (Vecinos_4, main ="Vecinos_4" , xlab="Datos de Vecinos", ylab= "Frecuencia", col="Red")

hist (conjunto$Diametro, main ="Diámetro" ,xlab="Datos de Diámetro", ylab= "Frecuencia", col="Green")

hist (DBH_media, main ="DBH_media" , xlab="Datos de Diámetro", ylab= "Frecuencia", col="Green")

hist (DBH_16, main ="DBH_16" , xlab="Datos de Diámetro", ylab= "Frecuencia", col="Green")

# Estadísticas básicas
mean(conjunto$Altura)
mean(H.media) 
mean(H.16) 

sd(conjunto$Altura)
sd(H.media)  
sd(H.16)  


mean(conjunto$Vecinos)  
mean(Vecinos_3) 
mean(Vecinos_4) 

sd(conjunto$Vecinos)  
sd(Vecinos_3) 
sd(Vecinos_4)

mean(conjunto$Diametro) 
mean(DBH_media) 
mean(DBH_16) 

sd(conjunto$Diametro) 
sd(DBH_media) 
sd(DBH_16) 

