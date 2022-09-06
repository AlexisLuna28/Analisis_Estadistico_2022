#Jorge Alexis Luna Robles
# 06/09/2022

# Pruebas de t student ----------------------------------------------------
# Las pruebas de t estuden se usan para conocer las diferencias entre 2 medias.
# Las pruebas de t studen se dividen en dos tipos, de una muestra y de dos muestras
# Las de dos muestras se dividen en: dependientes e independientes
# Se requiere de un alpha de 0.05
# 95%
# Se requiere hacer o plantear una hipotesis 
# Se requieren de minimo de un grupo de 30 observaciones, provenientes de una distribución de
# Que la varianza de los datos sean iguales
# Cuando la varianza no es igual, se realiza la prueba de "t"
# La hipotesis nula dice que no existe diferencia significativa
# La hipotesis alternativa dice que si existe diferencia significativa.

# Clase 5 -----------------------------------------------------------------
# Entre mas alto sea el indice de esveltes es mejor

viv <- read.csv("Clases/vivero.csv", header = T)
summary(viv)

# Se tomará el valor de referencia del 3er cuantil (.9375)

# Hipótesis: No existe diferencia significativa entre el valor del indice de eveltes de las plantas en vivero, en comparacion con el indice de esveltes puesto por conafor (.9375)

boxplot(viv$IE)
hist(viv$IE)

# Normalidad de datos -----------------------------------------------------

# Las pruebas de kolmogorov y Shapiro determinan la normalidad de los datos
# El valor de p (P value)
# alpha= 0.05
# Valores menores a 0.05 en el P value, indica la Hipotesis alternativa
# Valores mayores a 0.05 en el P value, indica la hipotesis nula 
#Prueba de shapiro
shapiro.test(viv$IE)

#Prueba de Kolmogorov
ks.test(viv$IE, "pnorm", mean = mean(viv$IE), sd = sd(viv$IE))


# Prueba de t para una muestra
# MU = media teorica (0.9375)

t.test(viv$IE, mu = 0.77)

# Df = grados de libertad
# P value de 0.000309, se coloca *** para decir que la diferencia significativa es altamente  

# Para reafirmar si existe diferencias sigificativas se pueden hacer distribución de dos colas

# Cuando no se tienen 30 datos, se debe realizar una prueba de normalidad
# Para realizar una transformación de datos se puede aplicar la funcion de log(alpha)+0.05


