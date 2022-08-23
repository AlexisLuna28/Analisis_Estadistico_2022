# Jorge Alexis Luna Robles
# 16/08/2022
# Clase 2



# ingresar datos ----------------------------------------------------------


dbh <- c(16.5, 25.3, 22.1, 17.2, 16.1, 8.1, 34.3, 5.4, 5.7,
         11.2, 24.1, 14.5, 7.7, 15.6, 15.9, 10, 17.5, 20.5,
         7.8, 27.3, 9.7, 6.5, 23.4, 8.2, 28.5, 10.4, 11.5,
         14.3, 17.2, 16.8)

length(dbh)
# Medidas de tendencia central

media <- sum(dbh)/length(dbh)
mean(dbh)
median(dbh)

# Media geométrica

exp(mean(log(dbh)))

# Medidas de dispersión

sd(dbh)
var(dbh)

# El resultado del coeficiente de variación es en porcentaje
coef.var <- sd(dbh)/mean(dbh) *100
coef.var

# El primer numero es el minimo, el ultimo es el maximo, y los intermedios son los cuantiles

fivenum(dbh)


quantile(dbh, 0.15)
quantile(dbh,0.30)

# Gráfica -----------------------------------------------------------------

#Gráfica de caja
boxplot(dbh, col = "lightgreen", ylab ="Diámetro (cm)",
        xlab = "Sitio 1", main = "Parcela BE" )

# Histograma
hist(dbh, col = "lightgreen", ylab = "Frecuencia",
     xlab = "Diámetro (cm)",
     main = "Sitio BE", ylim = c(0, 10) )
stem (dbh, scale = 2)


# Modificar un dato en específico
dbh[1] <- 16.5
dbh

# Muestra aleatoria
dbh50 <- sample(dbh, 10, replace = TRUE)

set.seed(50)
dbh50 <- rnorm(50)
hist(dbh50)
dbh10 <- rnorm(10)
hist(dbh10)
dbh100 <- rnorm(100)
hist(dbh100)
dbh1000 <- rnorm(1000)
hist(dbh1000)

