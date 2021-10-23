#cantidad de niveles
niveles <- 5
# probabilidad de caer a la izquierda
probabilidad_izquierda <- 1 / 2
# probabilidad de caer a la derecha
probabilidad_derecha <- 1 / 2
# se crean las casillas
casillas <- numeric(niveles + 1)
for (i in 0:niveles) {
    casillas[i + 1] <- i
}
# se calcula el total de rutas posibles
total_rutas <- 2^niveles
cat(
    "Para", niveles, "niveles el numero total de Rutas:",
    total_rutas <- 2^niveles,
    "\n"
)
#funcion de combinatoria
combinatoria <- function(n, x) {
    resultado <- (factorial(n)) / (factorial(x) * factorial(n - x))
    return(resultado)
}
#calcula cantidad de rutas por casilla y la probabilidad de caer en la casilla
for (i in casillas) {
    probabilidad <- combinatoria(niveles, i) * (probabilidad_izquierda^i) * (probabilidad_derecha^(niveles - i))
    ruta_casilla <- probabilidad * total_rutas
    cat(
        "La casilla", i, "tiene:", ruta_casilla, "trayectorias",
        "\n"
    )
    cat(
        "La probabilidad de que la bola caiga en la cassilla", i,
        "es de:", probabilidad, "\n"
    )
}

### para el 1 si creo que son igual de probalbes todas las rutas posibles

### 3 distribucion binomial

## 4 cantidad de rutas 2^n
## la bobabilidad de que caiga en cada celda es  usar formula del link https://youtu.be/QfS0tWotiYA?t=1042