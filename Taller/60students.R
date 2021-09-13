# 60 estudiantes, incluyendo a Joseph y Julie, van a ser divididos en tres clases de igual tamaño, y esto se va a
# hacer al azar. ¿Cuál es la probabilidad de que Joseph y Julie acaben en la misma clase?
total_estudiantes = 60
estudiantes = 2 # Joseph y Julie
#numero de grupos cuando Joseph y Julie estan en el mismo grupo
numeroGruposJyJ= (factorial(total_estudiantes-estudiantes))/(factorial(20)*factorial(20)*factorial(18)*factorial(2))
numeroGrupos= (factorial(total_estudiantes))/(factorial(20)*factorial(20)*factorial(20)*factorial(3))
probabilidad = numeroGruposJyJ/numeroGrupos
cat("la probabilidad de que Joseph y Julie acaben en la misma clase es de: ",probabilidad)
# la probabilidad de que Joseph y Julie acaben en la misma clase es de:  0.3220339