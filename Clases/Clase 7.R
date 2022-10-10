# Jorge Alexis Luna Robles
# Análisis de varianza (ANOVA)
# 27/09/2022

# DATOS -------------------------------------------------------------------

arena <- c(6, 10, 8, 6, 14, 17, 9, 11, 7, 11)
arcilla <- c(17, 15, 3, 11, 14, 12, 12, 8, 10, 13)
limo <- c(13, 16, 9, 12, 15, 16, 17, 13, 18, 14)

prod <- c(arena, arcilla, limo)

suelo <- gl(3, 10, 30, labels = c("arena", "arcilla", "limo"))

avena <- data.frame(suelo, prod)

# Función tapply ----------------------------------------------------------

tapply(avena$prod, avena$suelo, length)
tapply(avena$prod, avena$suelo, mean)
tapply(avena$prod, avena$suelo, sd)
tapply(avena$prod, avena$suelo, var)


#Revisar la homogeneidad de las varianzas
bartlett.test(avena$prod, avena$suelo)

fligner.test(avena$prod, avena$suelo)

# Revisar datos de forma gráfica

boxplot(avena$prod ~ avena$suelo)

# Suma de cuadrados total
SST <- sum((avena$prod - mean(avena$prod))^2)

# Suma de cuadrados del error
arena - mean(arena)
arcilla - mean(arcilla)
limo - mean(limo)

arena.sum <- sum((arena - mean(arena))^2)
arcilla.sum <- sum((arcilla - mean(arcilla))^2)
limo.sum <- sum((limo - mean(limo))^2)

SSe <- arena.sum + arcilla.sum + limo.sum
SSe


SSTr <- SST - SSe
SSTr

# Cuadrado medio
tapply(avena$prod, avena$suelo, var)
CME <- mean(tapply(avena$prod, avena$suelo, var)) 
CMtr <- SSTr/2
Fcal <- CMtr/CME
Fcal 

Ftab <- qf(0.95, 2, 27)
Ftab

probF <- 1- pf(Fcal, 2, 27)
probF


# ANOVA procedimiento simplificado

avena.aov <- aov(avena$prod ~ avena$suelo)
summary(avena.aov)

par(mfrow=c(2,2))
plot(aov(avena$prod ~ avena$suelo))
par(mfrow=c(1,1))

TukeyHSD(avena.aov, conf.level = 0.95)

plot(TukeyHSD(avena.aov))
