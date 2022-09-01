
# Problema 1 --------------------------------------------------------------


superficie <- c(3140, 1453, 450, 1200, 720)
sup_creciente <- sort(superficie)
sup_creciente
sup_decreciente <- sort(superficie, decreasing = TRUE)
sup_decreciente

barplot(sup_creciente, main = "Superficie Creciente", col = rainbow(5), 
        ylab = "Héctareas", xlab = "Género",
        names.arg = c("Pinus", "Mezquite", "Encinos", "Teka","Juniperus"))
              
barplot(sup_decreciente, main = "Superficie Decreciente", col = rainbow(5), 
        ylab = "Héctareas", xlab = "Género", 
        names.arg = c("Pinus", "Mezquite", "Encinos", "Teka", "Juniperus"))
mean (superficie)


# Problema 2 --------------------------------------------------------------

germinacion <- c(4, 1, 6, 2, 4, 2, 4, 2, 4, 6, 3, 5, 3, 2, 5, 4, 0, 5, 4,
                 2, 4, 5, 3, 5, 3, 5, 4, 3, 6, 2)
mean(germinacion)
sd(germinacion)


# Problema 3 --------------------------------------------------------------

altura <- c(38, 14, 44, 11, 9, 21, 39, 28, 41, 4, 35, 24, 36, 12,
            20, 31, 24, 25, 10, 21, 11, 36, 37, 20, 26)
mean(altura)
sd(altura)

