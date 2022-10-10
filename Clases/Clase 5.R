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


data("chickwts")
summary(chickwts)
hist(chickwts$weight)
# Hipotesis: no existe diferencia significativa entre el peso de ganancia de los pollos en relacion al valor establecido por el producto (300 gm)
length(chickwts$weight)
shapiro.test(chickwts$weight)

t.test(chickwts$weight, mu = 300, alternative = "less") # Se agrega less para declarar que el producto tiene menor del que presenta lo establecide o mayo se pone "greater"


# Prubas para dos muestras (dependientes e independientes) ----------------

# Para analizar dos muestras se realiza un ANOVA para calcular la varianza

# Dependientes e independientes llevan un significado en las pruebas de t:
# Dependientes: Individuos con el mismo tratamiento 
# Independientes: Individuos con mismas variables pero en diferente grupos


#  Dos muestras independientes --------------------------------------------

boxplot(viv$IE ~ viv$Tratamiento)

shapiro.test(viv$IE)

var.test(viv$IE ~ viv$Tratamiento)

t.test(viv$IE ~ viv$Tratamiento, var.equal = T)

# Los grados de libertad son (n- 2) para este caso
# Para determinar si hay diferencias significativas se puede realizar por la tabla de t
# T calculada menor a la T tabulada, no presenta diferencias significativas
# T calculada mayor a la T tabulada, si presenta diferencias significativas


invent <- read.csv("Clases/inventario.csv", header = T)
invent$Tratamiento <- as.factor(invent$Tratamiento)
invent$Fecha <- as.factor(invent$Fecha)

boxplot(invent$Diametro ~ invent$Tratamiento)

shapiro.test(invent$Diametro)
var.test(invent$Diametro ~ invent$Tratamiento)

t.test(invent$Diametro ~ invent$Tratamiento, var.equal = T)

boxplot(invent$Dcopa ~ invent$Tratamiento)

shapiro.test(invent$Dcopa)
var.test(invent$Dcopa ~ invent$Tratamiento)
t.test(invent$Dcopa ~ invent$Tratamiento, var.equal = T)

# Dos muestras dependientes -----------------------------------------------

boxplot(invent$Kilogramo ~ invent$Fecha)

shapiro.test(invent$Kilogramo)
var.test(invent$Kilogramo ~ invent$Fecha)

t.test(invent$Kilogramo ~ invent$Fecha, paired = TRUE) #Paired para indicar que son variables dependientes
