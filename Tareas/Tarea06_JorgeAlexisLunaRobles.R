# Jorge Alexis Luna Robles
# Tarea 6

erupcion <- read.csv("erupciones.csv", header = T)
head(erupcion)
plot(erupcion$eruptions, erupcion$waiting,
     xlab = "Erupciones",
     ylab = "Tiempo",
     pch = 19, col= "blue")

# Actividades a Realizar.
 ------------------------------------------------
# Correlación:
# Realizar las estadísticas descriptivas de ambas variables (media, desviación estándar y varianza)

#Medias
mean(erupcion$eruptions)
mean(erupcion$waiting)

# Desviación estandar
sd(erupcion$eruptions)
sd(erupcion$waiting)

#Varianza
var(erupcion$eruptions)
var(erupcion$waiting)

#Correlación 
cor.erup <- cor.test (erupcion$eruptions, erupcion$waiting)
cor.erup

#¿Cuál es el coeficiente de correlación (r)? R= .9008112
#¿Es significativa la correlación? R= Si es una correlacion significativa 
  

# Hipotesis nula: Existe una correlación positiva entre las erupciones y el tiempo 
# Hipotesis alternativa: No existe una correlación entre las erupciones y el tiempo 

erupcion.lm <- lm(erupcion$eruptions ~ erupcion$waiting)
erupcion.lm
abline(erupcion.lm, col= "RED")
# Valor de α = -1.87402, y valor de β= 0.07563


# Regresión lineal --------------------------------------------------------

summary(erupcion.lm)
# ¿cual es el valor de p? p = 2.2e-16 y a su vez es significativo

# ¿Son significativas las regresoras α y β? R= si son muy significativas***.

# ¿Es significativa la regresión?  R= Es significativa de acuerdo con las regresoras.

# Finalmente conteste: ¿Cuál será la duración en minutos de la próxima erupción, si los tiempos de espera son los dados en el siguiente cuadro?


sum(erupcion.lm$residuals)

-1.874016 + (0.075628*80) #  6.973588e-16 minutos

-1.874016 + (0.075628*40) #  4.176224 minutos

-1.874016 + (0.075628*45) #  1.529244 minutos

-1.874016 + (0.075628*53) #  2.134268 minutos

-1.874016 + (0.075628*61) #  2.739292 minutos
