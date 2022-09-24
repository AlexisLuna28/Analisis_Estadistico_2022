# Jorge Alexis Luna Robles 
# Tarea 5
efimeras <- read.csv("efimeras.csv")
efimeras
plot(efimeras$Speed, efimeras$Abundance,
     pch = 19, col= "Blue",
     xlab = "Velocidad",
     ylab = "Abundancia")
# R= La correlación si es estadisticamente significativa

cor_efim <- cor.test(efimeras$Speed, efimeras$Abundance)
cor_efim
abline(cor_efim)

# Explicar los datos de la gráfica
# R= Conforme aumenta la velocidad del arroyo, la abundancia de las moscas es mayor

#Hipotesis planteadas
#Hipotesis nula: No se presenta una correlación entre la velocidad del arroyo y la abundancia de las efimeras
#Hipotesis alternativa: Si se presenta una correlacion entre la velocidad del arroyo y la abundancia de efimeras

# Valor de r= 0.8441408, grados de libertad= 6 y se presenta una correlacion positiva significativa, valor de p= 0.008393

# Ejercicio 2 -------------------------------------------------------------

suelo <- read.csv("suelo.csv")
suelo

cor.test(suelo$pH, suelo$N)

cor.test(suelo$pH, suelo$Dens)

cor.test(suelo$pH, suelo$P)

cor.test(suelo$pH, suelo$Ca)

cor.test(suelo$pH, suelo$Mg)

cor.test(suelo$pH, suelo$K)

cor.test(suelo$pH, suelo$Na)

cor.test(suelo$pH, suelo$Conduc)

dato_suelo <- matrix(0,7,3)
colnames(dato_suelo) <- (c("Conjunto","r","valor de p"))
rownames(dato_suelo)<- (c("1","2","3","4","5","6","7"))

conjunto <- c("pH - N", "pH - Dens", "pH - P", "pH - Ca", "pH - Mg", "pH - K", "pH - Na")
dato_suelo [, 1] <- conjunto

r <- c("0.636654", "-0.5890264", "0.5910303", "0.8086293", "-0.3957821", "0.5795727", "-0.693264")
dato_suelo [, 2] <- r

valor_de_p <- c("0.00000149", "0.00001062", "0.00000974", "0.000000000003614", "0.005361", "0.00001585", "0.00000004724")
dato_suelo [, 3] <- valor_de_p

