# Jorge Alexis Luna RObles
# Laboratorio 6

wins = c(52, 51, 47, 47, 42)
losses = c(20, 21, 25, 25, 30)

#Porcentaje de victorias-derrotas
win_loss_perc = wins/(wins + losses)
win_loss_perc

teams = c("UtJ", "PhS", "DnN", "LAC", "DIM")

# MANIPULACIÓN DE VECTORES ------------------------------------------------

# PRIMER ELEMENTO DE "WINS"
wins[1]
# SEGUNDO ELEMENTO DE "LOSSES"
losses[3]
# ULTIMO NOMBRE EN "TEAMS"
teams[5]

length(teams)
teams[length(teams)]
sort(wins, decreasing = TRUE)
rev(wins)

# Subconjuntos con índices lógicos ----------------------------------------

# victorias de Utah Jazz
wins[teams == 'UtJ']
# equipos con victorias > 40
teams[wins > 40]
# nombre de los equipos con derrotas entre 10 y 29
teams[losses >= 10 & losses <= 29]

# Factores y variables cualitativas ---------------------------------------

# Vector Númerico
num_vector <- c(1, 2, 3, 1, 2, 3, 2)
# crear un factor a partir de num_vector
first_factor <- factor(num_vector)
first_factor

teams = factor(teams)
teams

# Secuencias --------------------------------------------------------------

# operador dos puntos :
1:5
1:10
-3:7
10:1

# Función Sequencia
seq(from = 1, to = 10)
seq(from = 1, to = 10, by = 1)
seq(from = 1, to = 10, by = 2)
seq(from = -5, to = 5, by = 1)

# Vectores repetidos ------------------------------------------------------

rep(1, times = 5)
rep(c(1, 2), times = 3)
rep(c(1, 2), each = 2)
rep(c(1, 2), length.out = 5)
rep(c(3, 2, 1), times = 3, each = 2)

# De vectores a estructura tabular (data frame) ---------------------------

dat=data.frame(
  Teams = teams, 
  Wins = wins, 
  Losses = losses, 
  WLperc = win_loss_perc)
dat

dat$Teams
dat$Wins[1]
dat$Wins[5]

#Victorias del equipo Utah
dat$Wins[dat$Teams == "UtJ"]

# Equipos con vistorias >40 
dat$Teams[dat$Wins >40]

#Nombre de los equipos con derrotas entre 10 y 29 
dat$Teams[dat$Losses >= 10 & dat$Losses <= 29]



# EJERCICIO ---------------------------------------------------------------

teams_2 = c("UJ", "PS", "DN", "LAC", "DM", "PTB", "LAL", "MG",
             "GSW", "SAS", "NOP", "SK", "MT", "OCT", "HOR")
wins_2 = c(52, 51, 47, 47, 42, 42, 42, 38, 39, 33, 31, 31, 23, 22, 17)
losses_2 = c(20, 21, 25, 25, 30, 30, 30, 34, 33, 39, 41, 41, 49, 50, 55)
win_loss_perc_2 = c(.722, .708, .653, .653, .583, .583, .583, .528, .542, .458, .431, .431, .319, .306, .236)
games_behind = c("NaN", 1.0, 5.0, 5.0, 10.0, 10.0, 10.0, 14.0, 13.0, 19.0, 21.0, 21.0, 29.0, 30.0, 35.0)
points_scored = c(116.4, 115.3, 115.1, 114.0, 112.4, 116.1, 109.5, 113.3, 113.7, 111.1, 114.6, 113.7, 112.1, 105.0, 108.8)
points_against = c(107.2, 109.5, 110.1, 107.8, 110.2, 114.3, 106.8, 112.3, 112.7, 112.8, 114.9, 117.4, 117.7, 115.6, 116.7)
rating = c(8.97, 5.67, 4.82, 6.02, 2.26, 1.81, 2.77, 1.07, 1.10, -1.58, -0.20, -3.45, -5.25, -10.13, -7.50)

games_behind_2 = wins_2[1]-wins_2

dat_2 = data.frame(
  TeamsWesC = teams_2,
  W = wins_2,
  L = losses_2,
  W_L = win_loss_perc_2,
  GB = games_behind_2,
  PS_G = points_scored,
  PA_G = points_against,
  SRS = rating 
)

sort(points_scored, decreasing = TRUE)
sort(points_scored, decreasing = FALSE)
