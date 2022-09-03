
#  Problema 1 ------------------------------------------------------------
i <- c(1, 2, 3, 4)
xi <- c(6, 4, 1, 3)
yi <- c(1, 3, 4, 2)
rbind(i, xi, yi)

sum(xi) 

sum(xi*yi)

prod(xi)

prod(xi*yi)

prod(xi^2*yi^0.5)

# Problema 2 --------------------------------------------------------------

# a) R= El grupo A, ya que presenta menos individuos y la altura mas baja del grupo A, es mayor que la del grupo B
# b) R= Si coincide con la respuesta anterior, ya que el grupo A tiene una media de 90, mientras el grupo B de 75.66

Grupo.A <- c(80,90,90,100)

mean(Grupo.A)

Grupo.B <- c(60,65,65,70,70,70,75,75,80,80,80,80,80,85,100)

mean(Grupo.B)

# Problema 3 --------------------------------------------------------------

#R= La calificación que se necesita es un 76, para tener el promedio de 80 
Cal.Exam<- c(87,72,85,76)
mean(Cal.Exam)


# Problema 4 --------------------------------------------------------------

#R= La respuesta correcta es el inciso "B",debido a que se menciona que se aplica una división entre los 50 hogares para obtener un promedio de 2.2,por lo cual 110 al dividirlo da el promedio deseado.

niños<- c(110)
niños
hogares<- c(50)
hogares
niños/hogares


# Problema 5 --------------------------------------------------------------

# R= a) El tipo de gráfica es Barplot
 
germinaciones <- c(5,6,7,8,9)

cajas_petri <- c(1,3,5,3,1)

mean (germinaciones)
median(germinaciones)
mean (cajas_petri)
median(cajas_petri)

# Problema 6 --------------------------------------------------------------

# a) Calcule la moda, la mediana y la media.
set <- c(2, 2, 3, 6, 10)
getmoda <- function(v) {uniqv <- unique(v)
  uniqv[which.max(tabulate(match(v, uniqv)))]
  }

getmoda(set)
median(set)
mean(set)

# b) Suma 5 a cada uno de los valores de los datos.  moda, mediana y media

set_5 <- c(7, 7, 8, 11, 15)
getmoda(set_5)
median(set_5)
mean(set_5)

# c) La mediana, la moda y la media, no se ven afectadas ya que el aumento es de manera uniforme para los datos

# d)
set_x5 <- c(10,10,15,30,50)

getmoda(set_x5)

median(set_x5)

mean(set_x5)

# e) las 3 variables, moda, mediana y la media,  se comportan de una manera similar, esto debido a que la multiplicacion es uniforme

# Problema 7 --------------------------------------------------------------

# a) con los números (4,7,7,8,9) se obtiene una mediana de 7 y media de 7 y con los números (4,6,7,9,9) se obtienen los mismos valores

pli <- c(4, 7, 7, 8, 9)
median(pli)
mean(pli)

pli.1 <- c(4, 6, 7, 9, 9)
median(pli.1)
mean(pli.1)

# b) con los números (1, 4, 7, 8, 9) dan una mediana de de 7 y una media de 5.8, y los números (2, 3, 7, 8, 8) dan una mediana de 7 y una media de 5.6

prb <- c(1, 4, 7, 8, 9)
median(prb)
mean(prb)

prb.1 <- c(2, 3, 7, 8,8)
median(prb.1)
mean(prb.1)


