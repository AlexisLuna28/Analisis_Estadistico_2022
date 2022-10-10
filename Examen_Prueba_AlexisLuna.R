# JORGE ALEXIS LUNA ROBLES
# EXAMEN PRUEBA
# 04/10/2022

suelo <- read.csv("https://www.dropbox.com/s/3pi3huovq6qce42/obs.csv?dl=1")
suelo$zone <- as.factor(suelo$zone)
suelo$wrb1 <- as.factor(suelo$wrb1)


# Actividad 1 -------------------------------------------------------------

summary(suelo$Clay1)
summary(suelo$Clay2)
summary(suelo$Clay5)

#PREGUNTA 1 ¿Cuál es la tendencia del contenido de Arcilla (Clay) con respecto a la profundidad?
#R= El contenido de arcilla aumenta conforme la profundidad tambien 
#lo hace, es decir que a mayor profundidad, mas contenido de arcilla se observa


# Actividad 2 -------------------------------------------------------------

stem(suelo$Clay1)
hist(suelo$Clay1)

#PREGUNTA 2 ¿Los datos de contenido de arcilla siguen una distribución simétrica o con sesgo?
#R= Los datos presentan un sesgo hacia el lado derecho 

# Actividad 3 -------------------------------------------------------------

boxplot(suelo$Clay1)
which(suelo$Clay1 >=65)
clay1_rest <- subset(suelo, Clay1 >= 65)
clay1_rest

#PREGUNTA 3  ¿Existe evidencia de outliers?
#R=  Si existen datos afuera (outliers)

#PREGUNTA 4 ¿Puede identificar cuáles observaciones son mediante una simple restricción de datos?
#R= Si, de acuerdo con una restriccion de valores mayor a 63


# Actividad 4 -------------------------------------------------------------

mean(suelo$Clay1)

clay1 <- c(suelo$Clay1)
clay2 <- c(suelo$Clay2)
clay5 <- c(suelo$Clay5)
tcp <- c(clay1, clay2, clay5)
mean(tcp)

#PREGUNTA 5 ¿Estime si el contenido de Arcilla promedio en los suelos tropicales 
#de 30 % es significativamente diferente
#que la media observada en el campo experimental Tropenbos Cameroon Programme (TCP)?

#R Si se presenta una diferencia 

# Actividad 5 -------------------------------------------------------------

cor_1_5 <- cor.test(suelo$Clay1, suelo$Clay5)
cor_1_5
#PREGUNTA 6  ¿Existe una relación positiva, negativa o para nada relacionados, 
#entre los perfiles superior (Clay1 ) einferior (Clay5 ) con el contenido de Arcilla?
#R= Si es una correlacion positiva de 0.8977

#PREGUNTA 7  ¿La correlación es estadísticamente significativa?
#R= De acuerdo con el parametro si es significativa

# Actividad 6 -------------------------------------------------------------

#PREGUNTA 8 ¿Es posible determinar una ecuación significativa para predecir el 
#comportamiento del contenido de arcilla en el perfil inferior Clay5 ?
#R= Si por medio de la funcion lm

clay5_lm <- lm(suelo$Clay5 ~ suelo$Clay1)
clay5_lm
summary(clay5_lm)
#PREGUNTA 9  ¿Cuál es la ecuación final para predecir el comportamiento del 
#contenido de arcilla en el perfil más profundo (30-50 cm)?
#R=18.7586+(0.8289*X)

#PREGUNTA 10 ¿Son ambos parámetros α y β significativos?
#R= Si ambos son altamente significtivos 

suelo$residual <- clay5_lm$residuals
sum(suelo$residual**2)/145

#PREGUNTA 11 ¿Cuál es el porcentaje de varianza explicado por el método aplicado?
#R= El porcentaje de varianza es 32.3413

# Actividad 7 -------------------------------------------------------------

#PREGUNTA 12  ¿Existe una forma de identificar la variación entre las cuatro 
#zonas que se encuentran en el estudio?
#R= Si, mediante la realizacion de un ANOVA


plot(suelo$Clay5 ~ suelo$zone)
#PREGUNTA 13  Realice una inspección visual del contenido de arcilla en 
#el perfil 30-50 cm (Clay5 ) y las cuatro zonas(zone) presentes en el área de estudio. 
#¿Existen indicios de que las cuatro zonas son diferentes en cuanto al
#contenido de arcilla en el perfil de 30 a 50 cm.?

#R= Si, la zona 1 presenta diferencias con respecto a la zona 4, 
#la zona 2 presenta diferencias con las zonas 3 y 4, y la zona 3 con la zona 4, 
#la zona 4 presenta mayor variacion en el perfil inferior.

#PREGUNTA 14 ¿Observa alguna tendencia en los datos en las diferentes zonas?
#R=El contenido de arcilla dismunuye en las zonas, la zona 1 tiene mayor contenido
# y las zonas posteriores (2, 3 y 4) presentan menores. Van de mayor a menor

by(suelo$Clay5, suelo$zone, summary)


# Actividad 8 -------------------------------------------------------------

#PREGUNTA 15 ¿Existen diferencias significativas entre el contenido de arcilla 
#del perfil 30-50 cm y las zonas del estudio?
#R= Si se presentan diferencias 

#PREGUNTA 16 En caso de existir diferencias ¿Cuáles zonas son diferentes 
#estadísticamente entre si en el contenido de arcilla en el perfil de 30-50 cm?
#R= Entre la zona 1 y 2 no se presentan diferencias estadisticas,
#pero entre las demas zonas si se presentan diferencias

suelo.aov <-aov(suelo$Clay5 ~ suelo$zone)
summary(suelo.aov)
suelo.aov

TukeyHSD(suelo.aov, conf.level = 0.95)

plot(TukeyHSD(suelo.aov))

