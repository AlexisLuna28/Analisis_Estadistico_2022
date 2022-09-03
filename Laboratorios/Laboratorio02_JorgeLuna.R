# Importar desde archivos csv
read.csv("DBH_1.csv", header =T)  
head(trees) 

#Ingresar datos directo en la consola
dbh <- c(16.5, 25.3, 22.1, 17.2, 16.1, 8.1, 34.3, 5.4, 5.7, 11.2, 24.1,
         14.5, 7.7, 15.6, 15.9, 10, 17.5, 20.5, 7.8, 27.3,
         9.7, 6.5, 23.4, 8.2, 28.5, 10.4, 11.5, 14.3, 17.2, 16.8) 

# Datos de URL no seguras (http)

prof_url <- "http://www.profepa.gob.mx/innovaportal/file/7635/1/accionesInspeccionfoanp.csv"
profepa <- read.csv(prof_url, header = T, fileEncoding = "Latin1")
head(profepa)

prof_url_2 <- paste0("http://www.profepa.gob.mx/innovaportal/",
                     "file/7635/1/accionesInspeccionfoanp.csv")
profepa2 <- read.csv(prof_url_2, header = T, fileEncoding = "Latin1")
head(profepa2)

#Datos de URL seguras (https): Dropbox 
library(repmis)
conjunto <- source_data("https://www.dropbox.com/s/hmsf07bbayxv6m3/cuadro1.csv?dl=1")

head(conjunto)
#Datos de URL seguras (https): Github
library(readr)
file <- paste0("https://raw.githubusercontent.com/mgtagle/",
               "202_Analisis_Estadistico_2020/master/cuadro1.csv")
inventario <- read.csv(file)

head(inventario)

# Parte 2: Operaciones con la base de datos -------------------------------

trees <- read.csv("DBH_1.csv", header=TRUE)

mean(trees$dbh)
sd(trees$dbh)

# Selección mediante restricciones
sum(trees$dbh < 10)

which(trees$dbh < 10)

trees.13 <- trees[!trees$parcela=="2",]
trees.13

# Selección de una submuestra
trees.1 <- subset(trees, dbh <= 10)
head(trees.1)

mean(trees$dbh)
mean(trees.1$dbh)

hist(trees$dbh)
hist(trees.1$dbh, col = "lightgreen", ylab = "Frecuencia",
xlab = "DBH", ylim= c(0, 2.5))


# Parte 3 Representación gráfica ------------------------------------------

# Histogramas
mamiferos <- read.csv("https://www.openintro.org/data/csv/mammals.csv")

hist(mamiferos$total_sleep)
hist(mamiferos$total_sleep,
     xlim = c(0,20), ylim = c(0,14),
     main = "Total de horas sueño de las 39 especies",
     xlab = "Horas sueño", ylab = "Frecuencia", las = 1, col = "#996600")

#Barplot o gráfico de barras

data("chickwts")
head(chickwts[c(1:2,42:43, 62:64), ])

feeds <- table(chickwts$feed)
feeds

barplot(feeds, cex.names = 0.7)
barplot(feeds[order(feeds, decreasing = TRUE)], cex.axis = 0.7, cex.names = 0.7)


barplot(feeds[order(feeds, decreasing = TRUE)], horiz = TRUE, 
        las= 1, col = "yellow", xlab = "Número de pollos", cex.names = 0.8,
        main= "Frecuencias por tipos de alimentos")

