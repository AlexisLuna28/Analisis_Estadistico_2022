
# Importar datos csv ------------------------------------------------------

esp.url <- paste0("https://raw.githubusercontent.com/mgtagle/",
                  "PrincipiosEstadistica2021/main/cuadro1.csv")
inventario <- read.csv(esp.url) 

str (inventario) 
dim (inventario) 
head (inventario, n= 5)
tail (inventario, n= 5)
names (inventario) 
colnames (inventario)
summary (inventario)

dim(inventario)
names (inventario [1:5])  
summary (inventario [3:5]) 

is.factor (inventario$Posicion) 

inventario$Posicion <- factor (inventario$Posicion)  
is.factor (inventario$Posicion) 

summary (inventario [, 3:5]) 

# Tablas de frecuencia  ---------------------------------------------------

freq_position <- table (inventario$Posicion) 
freq_position

prop_position <- (freq_position/sum (freq_position)) 
prop_position 

perc_position <- 100 * prop_position 
perc_position 

barplot(freq_position, las= 1, border= NA, cex.names=0.7) 

pie(freq_position, col= topo.colors(4))  

pie(freq_position, col= topo.colors (4), 
    labels = paste (levels (inventario$Posicion), round (perc_position, 2), "%")) 

#Completar una tabla de frecuencia y su representación gráfica (barplot y pie) para la variable Especie del conjunto de datos inventario

freq_especie <- table (inventario$Especie) 
freq_especie

prop_especie <- (freq_especie/sum (freq_especie)) 
prop_especie

perc_especie <- 100 * prop_especie 
perc_especie 

barplot(freq_especie, las= 1, border= NA, cex.names=0.7, ylim = c(0, 25)) 

pie(freq_especie, col= topo.colors(3))  

pie(freq_especie, col= topo.colors(3), 
    labels = paste(levels(inventario$Especie), round(perc_especie, 2), "%")) 


# Histogramas -------------------------------------------------------------

diam_hist <- hist(inventario$Diametros, las = 1, col = '#ffe0b3')  

diam_hist
diam_hist$breaks 
diam_hist$mids

h1 <- hist(inventario$Diametros, xaxt= "n",
           breaks = c(6, 8, 10, 12, 14, 16, 18, 20, 22,24),
           col= "#00cc99", xlab= "Diametro (cm)",
           ylab= "Frecuencia",
           main= "",
           las= 1, 
           ylim= c(0,14)) 
axis(1, h1$mids) 

#Completar una tabla de frecuencia y su representación gráfica (barplot y pie) para la variable Especie del conjunto de datos inventario

alt_hist <- hist(inventario$Altura, las = 1, col = '#ffe0b3')  

alt_hist
alt_hist$breaks 
alt_hist$mids

h2 <- hist(inventario$Altura, xaxt= "n",
           breaks = c( 8, 10, 12, 14, 16, 18, 20, 22),
           col= "green", xlab= "Altura (m)",
           ylab= "Frecuencia",
           main= "",
           las= 1, 
           ylim= c(0,14)) 
axis(1, h1$mids) 



