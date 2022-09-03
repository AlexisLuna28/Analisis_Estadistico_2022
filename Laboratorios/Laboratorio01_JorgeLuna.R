
# Parte 1 -----------------------------------------------------------------

celular <- 300
transporte <- 240
alimentos <- 1527
gimnasio <- 400
alquiler <-1500
otros <- 1833

gastos <- c(celular, transporte, alimentos, gimnasio, alquiler, otros)
gastos

# Gastos totales
total_gastos <- sum(gastos)

total_gastos

# Gasto por 5 meses
total_gastos_5m <-(total_gastos*5)
total_gastos_5m

# Gastos por 10 meses
total_gastos_10m <-(total_gastos*10)
total_gastos_10m

#Gráficas y valores decreciente 
gastos_dec <- sort(gastos, decreasing =  TRUE)
gastos_dec
barplot(gastos, main =" Gastos", xlab = "Tipo de gasto", ylab = "Costo", 
        col = rainbow(6), cex.axis = (0.7),cex.names = (0.7), ylim = c (0, 2000),
        names.arg = c("Celular" ,"Transporte", "Alimentos", "Gimnasio", 
                      "Alquiler", "Otros"))

barplot(gastos_dec, main = "Gastos Decreciente", 
        col=rainbow(6) , ylab= "Costo", xlab= "Tipo de gasto", 
        cex.axis = (0.7), cex.names = (0.7), ylim = c (0, 2000), 
        names.arg= c("Otros", "Alimentos","Alquiler", "Gimnasio", "Celular", "Transporte"))

# Parte 2 -----------------------------------------------------------------

#Problema 1

#Nombre de estudiante: Cualitativa
#Fecha de nacimiento (p. Ej., 21/10/1995): Cuantitativa
#Edad (en años): Cuantitativa
#Dirección de casa (por ejemplo, 1234 Ave. Alamo): Cualitativa
#Número de teléfono (por ejemplo, 510-123-4567): Cualitativa
#Área principal de estudio: Cualitativa
#Grado de año universitario: primer año, segundo año, tercer año, último año: Cualitativa
#Puntaje en la prueba de mitad de periodo (basado en 100 puntos posibles): Cualitativa
#Calificación general: A, B, C, D, F: Cualitativa
#Tiempo (en minutos) para completar la prueba final de MCF 202: Cuantitativa
#Número de hermanos: Cuantitativa


# Problema 2 --------------------------------------------------------------

#Eligir un objeto con 7 variables cuantitativas y 7 categóricas

Cuantitativas <- c ("Fecha de Nacimiento", "Edad", "Altura", "Peso",
     "Número de Hermanos", "Tiempo de Estudio", "Sueldo")
Categoricas <- c ("Nombre", "Estado civil", "Sexo", "Domicilio",
     "Número de Teléfono", "Correo Electrónico", "Clase Social")

lista <- matrix(NaN,7,2)
lista [,1] <- Cuantitativas[1:7]
lista [,2] <- Categoricas [1:7]
colnames( lista) <- c("Cuantitativas","Categóricas")
lista

# Problema 3 --------------------------------------------------------------
#Considere una variable con valores numéricos que describen formas electrónicas de expresar opiniones personales: 1 = Twitter; 2 = correo electrónico; 3 = mensaje de texto; 4 = Facebook; 5 = blog. ¿Es esta una variable cuantitativa o cualitativa? Explique

# R= Es una variable cualitativa, ya que se esta dando una condición o categorización para identificar las diversas redes sociales, en las cuales se expresan opiniones de las personas.


# Problema 4 --------------------------------------------------------------

# ¿Cual es la cantidad promedio de horas que los estudiantes de universidaded publicas reabaja cada semana?
# R= 1) Estudiantes Universitarios, 2) Horas prpmedio trabajadas, 3) Cuantitativas

# ¿Que proporcion de todos los estudiantes universitarios de México estan inscritos en una universidad pública?
# R= 1) Estudiantes Universitarios, 2)Estudiantes Universitarios inscritos en una Universidad pública, 3) Categórica

# En las universidades públicas, ¿las estudiantes femeninas tienen un promedio de CENEVAL mas alto que los estudiantes varones?
# R= 1) Estudiantes femeninas, 2) Promedio de CENEVAL, 3) Categórica

# ¿Es mas probable que los atletas universitarios reciban asesoramiento académico que los atletas no universitarios?
# R= 1) Atletas universitarios y no universitarios, 2) Asesoramiento académico, c) Categórica 

# Si reunieramos datos para responder a las preguntas de la investigación anterior, ¿que datos podrian analizarse mediante un histograma? ¿como lo sabes?
# R= Cantidad de interesados en el asesoramiento, deporte que practican,: Porque los histogramas representan la distribución de datos en función de algun parámetro   

 