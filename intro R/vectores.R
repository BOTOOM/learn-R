# vectores

array1 <- c(1,2,3,4)
array2 <- c(5,4,3,2)
print(array1)

arrayNumeric <- c(TRUE, 12, 23)
# cuanvierte todos los valores al mismo tipo
print(arrayNumeric)
meses <- c('enero', 'febrero', 'marzo')
ventas <- c(212,120,400)
names(ventas) <- meses
print(ventas)

# operaciones arotmeticas con los vectores son uno a uno con cada valos de los mismos

#operaciones adicionales

#suma de datos del vector
print( sum(ventas)  )

#media
print( mean(ventas)  )

#desviacion estandar
print( sd(ventas)  )

#maximo valor
print( max(ventas)  )

# minimo valor
print( min(ventas)  )

#multiplicar todos los elementos de un ventos
print( prod(ventas)  )

# las comparaciones normales de < > >= >= == sirven en lso numeros y en vectores
print(array1 > array2  )

# para acceder a los elementos de un vector se acede usando las llaves y entre estas el
# indice o posicion del valor
# aqui los vectores inician desde la posicion 1 , no existe posicion 0
print( ventas[1]  )

# se puede acceder a varias al tiempo
print( ventas[c(1,3)]  )
print( ventas[1:2]  )

#tambien se puede acceder usando los nombres
print( ventas['enero']  )
print( ventas[c('enero','marzo')]  )

#se pueden obtener datos segun condiciones
print (ventas[ventas < 200])

#usar variables para filtrar
filtro <- (ventas > 300)
print( ventas[filtro] )
