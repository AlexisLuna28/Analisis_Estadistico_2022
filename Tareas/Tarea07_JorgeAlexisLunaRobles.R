costal <- c(87.7, 80.01, 77.28, 78.76, 81.52, 74.2, 80.71, 79.5, 77.87, 81.94, 80.7,
            82.32, 75.78, 80.19, 83.91, 79.4, 77.52, 77.62, 81.4, 74.89, 82.95,
            73.59, 77.92, 77.18, 79.83, 81.23, 79.28, 78.44, 79.01, 80.47, 76.23,
            78.89, 77.14, 69.94, 78.54, 79.7, 82.45, 77.29, 75.52, 77.21, 75.99,
            81.94, 80.41, 77.7)

# Determinar el número de observaciones
n <- length(costal)
n

# Determinar la media
costa.media <- mean(costal)
costa.media

# Desviación estándar
costa.sd <- sd(costal)
costa.sd

costa.se <- costa.sd/ sqrt(n)
costa.se

costa.T <- (costa.media - 80)/ costa.se
costa.T

pt(costa.T, df = n-1) # Arriba se declaro "n" como número de costales observados


# Ejercicio 1 -------------------------------------------------------------

t.test(costal, mu = 80)

# ¿ Cual es el valor de p? pt = 0.01132175 y t.test p= 0.02264

# ¿Cuántos grados de libertad tiene el experimento? R= 43

# ¿Cuál es la hipótesis aceptada? R= Hipótesis alternativa


# ¿Existe evidencia de que el valor medio promedio de los costales observados es menor (significativamente) a los que anuncia el producto? R= Si se presenta diferencia entre los valores
  

# Ejercicio 2 -------------------------------------------------------------

azufre <- c(15.8, 22.7, 26.8, 19.1, 18.5, 14.4, 8.3, 25.9, 26.4, 9.8,
            22.7, 15.2, 23.0, 29.6, 21.9, 10.5, 17.3, 6.2, 18.0, 22.9,
            24.6, 19.4, 12.3, 15.9, 11.2, 14.7, 20.5, 26.6, 20.1, 17.0,
            22.3, 27.5, 23.9, 17.5, 11.0, 20.4, 16.2, 20.8, 13.3, 18.1)

# Determinar el número de observaciones
n <- length(azufre)
n

# Determinar la media
azufre.media <- mean(azufre)
azufre.media

# Desviación estándar
azufre.sd <- sd(azufre)
azufre.sd

azufre.se <- azufre.sd/ sqrt(n)
azufre.se

azufre.T <- (azufre.media - 17.5)/ azufre.se
azufre.T

pt(azufre.T, df = n-1) 

t.test(azufre, mu = 17.5)

# ¿Cuál es el valor de p? pt =  0.9053257 y t.test valor de p = 0.1893

# ¿Cuáles son los intervalos de confianza al 95 % ? R= 16.87912 - 20.53588

# ¿Cuántos grados de libertad tiene el experimento? R= 39

# ¿Cuál es la hipótesis aceptada? R= Hipotesis nula

# ¿Existe evidencia de que el valor medio promedio de las emisiones observadas es mayor (significativamente) a la declarada en los procedimientos de seguridad de la empresa? R= No existe


# Ejercicio 3 -------------------------------------------------------------

file <- paste0("https://raw.githubusercontent.com/mgtagle/MCF-202_Agosto_2021/main/TEMPAIRE_DIA.csv")
tem <- read.csv(file)
head(tem)

# Determinar el número de observaciones
n <- length(tem$temp_media)
n

# Determinar la media
tem.media <- mean(tem$temp_media)
tem.media

# Desviación estándar
tem.sd <- sd(tem$temp_media)
tem.sd

tem.se <- tem.sd/ sqrt(n)
tem.se

tem.T <- (tem.media - 24)/ tem.se
tem.T

pt(tem.T, df = n-1) 

t.test(tem$temp_media, mu = 24)

# Encuentre si el valor promedio de la temperatura (temp_media) registradas es significativamente mayor a la establecida (24 Grados).

# ¿Cuál es el valor de p? pt= 0.01807384 y t.test p = 0.03615 

# ¿Cuáles son los intervalos de confianza al 95 % ? R= 23.28216 - 23.97599

# ¿Cuántos grados de libertad tiene el experimento? R= 845

# ¿Cuál es la hipótesis aceptada? R= Hipótesis alternativa

# ¿Existe evidencia de que el valor medio promedio de la temperatura observada es significativamente mayor a la establecida (24 grados)? R= No exite, porque El valor observado es menor


