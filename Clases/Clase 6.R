# Jorge Alexis Luna Robles
# Clase 6
# 20/09/2022

# Correlación
# Mide si existe una asociacion linean entre dos variables y si esta es significativa
# El eje de las "X" es la variable independiente, y el eje de "Y" es la variable dependiente
# Las correlaciones pueden ser de dos tipos: 1) Positiva 2) Negativa
# Positiva: cuando la variable "X", la variable "Y" tambien lo hace 
# Negativa: a medida que aumenta "X", la variable "Y" disminuye
# La correlación va desde -1 hasta +1 (ambas son correlaciones positivas al llegar al 1)
# La regresión estima la linea de tendencia central
# r = correlación 
# si el valor de "p" es mayor a 0.05 no hay correlacion y si el valor de p es menor a 0.05 hay una correlacion significativa 

# Importar datos  ---------------------------------------------------------

ebano <- read.csv("Clases/ebanos.csv", header = T)
plot(ebano$diametro, ebano$altura, pch =19, col="red",
     xlab = " Diametro (cm)",
     ylab = "Altura (cm)")

# Correlación de pearson (r) (parametrica) ----------------------------------------------

cor.eb <- cor.test(ebano$diametro, ebano$altura)
cor.eb
# Si existe una correlacion positiva significativa entre el diametro y la altura de los ebanos 

0.8217467**2*100

# Canopy ------------------------------------------------------------------

cnpy <- read.csv("Clases/canopy.csv", header = T)
plot(cnpy$Cnpy, cnpy$LAI4,
     xlab = "apertura del dosel (%)",
     ylab = "IAF",
     pch = 19, col="black")

# Se presenta una correlación negativa 
cor.test(cnpy$Cnpy, cnpy$LAI4)


plot(cnpy$Cnpy, cnpy$GLI,
     xlab = "apertura del dosel (%)",
     ylab = "GLI",
     pch = 19, col="RED")
cor.test(cnpy$Cnpy, cnpy$GLI)
0.5457512**2
# ya no se agregan mas variables por que no existe buena correlacion entre las variables 

plot(cnpy$LAI4, cnpy$GLI,
     xlab = "Indice de area foliar",
     ylab = "GLI",
     pch = 19, col = "Blue")
cor.test(cnpy$LAI4, cnpy$GLI)
# Si existe una correlación significativa 

# Cuando los datos no provienen de una distribución se realiza una prueba de Kendal (no parametrica)

shapiro.test(cnpy$Cnpy)
# Tiene una distribución normal p= 0.1744

shapiro.test(cnpy$LAI4)
# No tiene una distribución normal p= 0.0193

shapiro.test(cnpy$GLI)
# Tiene una distribución normal p= 0.3096

cor.test(cnpy$Cnpy, cnpy$LAI4, Method = "kendall")

# Y´= alpha + betha (x)

# Regresión ---------------------------------------------------------------

# Regresión entre Cnpy vs LAI4

# Para realizar una regresión debe estar presente una correlacion lineal (linealirad)

# Función lm (modelo lineal)
#primero se pone la variable dependiente ( LAI4) y despues la independiente (Cnpy)

cp.lm <- lm (cnpy$LAI4 ~ cnpy$Cnpy)
cp.lm
# el intercepto es el valor de "y"  cuando "x" vale cero (0)
plot(cnpy$Cnpy, cnpy$LAI4,
     xlab = "apertura del dosel (%)",
     ylab = "IAF",
     pch = 19, col= "blue")

abline(cp.lm, col = "red")
text(37, 1.5, "Y= 2.67-0.04*x", pos = 2)

# Y´= 2.66538 + (-0.04405) * x

summary(cp.lm)

# Los residuales son la diferencia existente entre los valores observados y los predichos
# La sumatoria de todos los residuales al cuadrado debe ser cero (0)
# Se debe de cumplir para saber que la linea es la mejor ajustada

# suma de residuales

cp.lm$residuals
sum(cp.lm$residuals)

cnpy$Yprima <- cp.lm$fitted.values
cnpy$dif <- cnpy$LAI4 - cnpy$Yprima
cnpy$residual <- cp.lm$residuals

sum(cnpy$residual**2/38) #38 grados de libertad del experimento y asi se calcula la varianza

summary(cp.lm)

2.67-0.04*30



