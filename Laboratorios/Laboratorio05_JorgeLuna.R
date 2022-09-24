#JORGE ALEXIS LUNA ROBLES
#LABORATORIO 5

# Graficar en un cuadro de 2x2
op = par(mfrow = c(2, 2), mar = c(4.5, 4, 1, 1))
plot(anscombe$x1, anscombe$y1, pch = 20)
plot(anscombe$x2, anscombe$y2, pch = 20)
plot(anscombe$x3, anscombe$y3, pch = 20)
plot(anscombe$x4, anscombe$y4, pch = 20)
par(op)
op
cor.test(anscombe$x1, anscombe$y1)
cor.test(anscombe$x2, anscombe$y2)
cor.test(anscombe$x3, anscombe$y3)
cor.test(anscombe$x4, anscombe$y4)


# DATOS 1 -----------------------------------------------------------------

datos1 <- matrix(0, length(anscombe$x1),2)
colnames(datos1) <- (c("x","y"))
datos1[,1] <- anscombe$x1
datos1[,2] <- anscombe$y1
datos1

# Modelo lineal (lm)
datos1.lm <- lm(anscombe$y1 ~ anscombe$x1)
plot(anscombe$x1, anscombe$y1, pch= 20)
abline(datos1.lm, col ="BLUE")

#Examinar la relación que existe entre dos muestras mediante una correlación. R= Se presenta una relacion lineal
#Explore los datos gráficamente y explique. R= en este caso es una correlacion positiva
# Hipotesis planteadas. R= Hipotesis nula: no se presenta una correlacion significativa, Hi: si se presenta una correlacion significativa

#Prueba de Shapiro
shapiro.test(anscombe$x1)

#Coeficiente de correlación (r).
cdatos1 <- cor.test(anscombe$x1, anscombe$y1)
cdatos1

summary(datos1.lm)
#Reporte los datos 
# Respuestas, r=0.8164205; df=9; p-value=0.00217.
# Hipotesis alternativa = se presenta una correlacion si es significativa 

# DATOS 2 ------------------------------------------------------------------
datos2 <- matrix(0,length(anscombe$x2),2)
colnames(datos2) <- (c("x","y"))
datos2[,1] <- anscombe$x2
datos2[,2] <- anscombe$y2
datos2

# Modelo lineal (lm)
datos2.lm <- lm(anscombe$y2 ~ anscombe$x2)
plot(anscombe$x2, anscombe$y2, pch= 20)
abline(datos2.lm, col ="BLUE")

#Examinar la relación que existe entre dos muestras mediante una correlación. R= Se presenta una no relacion lineal
#Explore los datos gráficamente y explique. R= en este caso es una correlacion no lineal
# Hipotesis planteadas. R= Hipotesis nula: no se presenta una correlacion significativa, Hi: si se presenta una correlacion significativa

#Prueba de Shapiro
shapiro.test(anscombe$x2)

#Coeficiente de correlación (r).
cdatos2 <- cor.test(anscombe$x2, anscombe$y2)
cdatos2

summary(datos2.lm)
#Reporte los datos 
# Respuestas, r=0.8162365; df=9; p-value=0.002179.
# Hipotesis alternativa = se presenta una correlacion si es significativa 

# DATOS 3 ------------------------------------------------------------------
datos3 <- matrix(0,length(anscombe$x3),2)
colnames(datos3) <- (c("x","y"))
datos3[,1] <- anscombe$x3
datos3[,2] <- anscombe$y3
datos3

# Modelo lineal (lm)
datos3.lm <- lm(anscombe$y3 ~ anscombe$x3)
plot(anscombe$x3, anscombe$y3, pch= 20)
abline(datos3.lm, col ="BLUE")

#Examinar la relación que existe entre dos muestras mediante una correlación. R= Se presenta una correlacion lineal simple
#Explore los datos gráficamente y explique. R= en este caso es una correlacion positiva
# Hipotesis planteadas. R= Hipotesis nula: no se presenta una correlacion significativa, Hi: si se presenta una correlacion significativa

#Prueba de Shapiro
shapiro.test(anscombe$x3)

#Coeficiente de correlación (r).
cdatos3 <- cor.test(anscombe$x3, anscombe$y3)
cdatos3

summary(datos3.lm)
#Reporte los datos 
# Respuestas, r=0.8162867; df=9; p-value=0.002176.
# Hipotesis alternativa = se presenta una correlacion si es significativa 


# Datos 4 -----------------------------------------------------------------

datos4 <- matrix(0,length(anscombe$x4),2)
colnames(datos4) <- (c("x","y"))
datos4[,1] <- anscombe$x4
datos4[,2] <- anscombe$y4
datos4

# Modelo lineal (lm)
datos4.lm <- lm(anscombe$y4 ~ anscombe$x4)
plot(anscombe$x4, anscombe$y4, pch= 20)
abline(datos4.lm, col ="BLUE")

#Examinar la relación que existe entre dos muestras mediante una correlación. R= Se presenta una correlacion no lineal
#Explore los datos gráficamente y explique. R= en este caso es una correlacion positiva
# Hipotesis planteadas. R= Hipotesis nula: no se presenta una correlacion significativa, Hi: si se presenta una correlacion significativa

#Prueba de Shapiro
shapiro.test(anscombe$x4)

#Coeficiente de correlación (r).
cdatos4 <- cor.test(anscombe$x4, anscombe$y4)
cdatos4

summary(datos4.lm)
#Reporte los datos 
# Respuestas, r=0.8165214; df=9; p-value=0.002165.
# Hipotesis alternativa = se presenta una correlacion significativa 
