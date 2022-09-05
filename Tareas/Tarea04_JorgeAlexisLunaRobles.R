
# Problema 1 --------------------------------------------------------------

set.seed (9875) 
size <- 1000
x2 <- round (runif (n = size, min = 0, max = 10), 2)

size_m <- hist (x2, las= 1, col= "red") 
size_m

size_m$breaks 

size_m1 <- hist(x2, xaxt = "n", breaks = c(0, 2, 4, 6, 8, 10), col = "purple",
                   ylab = "Frecuencia", las = 1, ylim = c(0, 250)) 

axis(1,size_m1$mids) 

size_m2 <- hist(x2, xaxt = "n", breaks = c(0, 1, 2, 4, 7, 10), col = "orange",
                ylab = "Frecuencia", las = 1) 
axis(1, size_m2$mids)


# Problema 2 --------------------------------------------------------------

#a. ¿Cuál distribución parece estar sesgada a la derecha? R= A

#b. ¿Cuál distribución parece estar sesgada a la izquierda? R= D

#c. ¿Cuál distribución parece ser simétrica o en forma de “campana”? R= C

#d. ¿Cuál distribución parece ser bimodal? R= B

#e. ¿Cuál distribución parece mostrar una falta de intervalos? R= C


# Problema 3 --------------------------------------------------------------

data(quakes) 

mags <- hist(quakes$mag, xaxt = "n",
             col = "#e6ac00", xlab="Magnitud de los terremotos",
             ylab= "Frecuencias",
             main = "",
             las = 1,
             ylim = c(0,260))
axis(1, mags$mids)


#a. ¿Cómo describiría la forma de esta distribución de las magnitudes de los terremotos?
#R= Se encuentra Sesgada a la derecha

#b. Mencione un intervalo donde ocurren tipicamente las magnitudes.
#R= el intervalo de 4.5

#c. Determine el rango de las magnitudes (Range = Max - Min).
#R= 2.4  (siendo de 4 - 6.4)

max(quakes$mag)
min(quakes$mag)

range = (max(quakes$mag) - min(quakes$mag)) 
range
#d. ¿Qué porcentaje de los terremotos ocurren con magnitud en la clase 5.3 (5.1 : 5.4)?
#R= 2.1%

library(dplyr)
magnitud <- quakes%>% filter(mag =="5.3")
porc_5.3 <- (length(magnitud$mag)/length(quakes$mag))*100
porc_5.3

#e. ¿Qué porcentaje de los terremotos tiene una magnitud igual o mayor a 5.0?
#R= 19.8%

magnitud <- quakes%>% filter(mag >="5")
porc_5 <- (length(magnitud$mag)/length(quakes$mag))*100
porc_5

#f. ¿Qué porcentaje de los terremotos tienen una magnitud menor o igual a 4.6?#
#R= 58.5%

magnitud <- quakes%>% filter(mag <="4.6")
porc_4.6 <- (length(magnitud$mag)/length(quakes$mag))*100
porc_4.6


# Problema 4 --------------------------------------------------------------

# ¿Qué porcentaje de las observaciones en una distribución se encuentran entre el primer y el tercer cuartil?

#R= b) 50 % 

# Problema 5 --------------------------------------------------------------


#a. ¿Cuál especie tiene el diámetro más pequeño? R= La especie C


#b. ¿Cuál especie tiene el diámetro más grande? R= La especie F


#c. ¿Cuál especie tiene el diámetro mínimo más alto? R= La especie F


#d. ¿Cuál especie tiene la mediana de diámetro más pequeña? R= La especie C


#e. ¿Cuál especie tiene la mediana de diámetro mas grande? R= La especie H


#f. ¿Cuál especie tiene el menor rango de diámetro? R= La especie F


#g. ¿Cuál especie tiene el rango intercuantil (Q3-Q1) más grande? R= La especie C


#h. ¿Cuál especie tiene el rango intercuantil (Q3-Q1) más pequeño? R= La especie F


#i. ¿Cuál especie tiene una distribución simétrica? R= La especie H


#j. ¿Cuál especie tiene el sesgo positivo (ver Fig. 2) más marcado ? R= La especie F



# Problema 6 --------------------------------------------------------------

fires <- c(78, 44, 47, 105, 126, 181, 277, 210, 155) 
fires

# valor mínimo
min (fires)

# Valor máximo
max (fires)

# Rango
range = (max(fires) - min(fires))
range

#Quantile 1
quantile (fires, 0.25)

# Quantile 2
quantile (fires, 0.50)

# Quantile 3
quantile (fires, 0.75) 

# Media
mean (fires)

# Varianza
var (fires)

# Desviación estándar
sd (fires)


# Boxplot personalizado 

# Horizontal = Orientación 
# Main = Titulo 
# Xlab= Nombre eje x
# Col= color de la caja
# whisklty = Tipo de linea de los bigotes
# Whiskcol =  Color de bigotes
# Staplelty = Tipo linea de barras
# Staplecol = Color linea de barras
# Border = Color del borde
# Boxtly = Tipo de línea de la caja

boxplot(fires, horizontal= TRUE, main = "Incendios forestales",
        xlab = " Frecuencia de incencidos" , col = "gray", 
        whisklty= 1, whiskcol = "red", staplelty = 3,
        staplecol = "blue" , border = "black", boxlty = 3)


        