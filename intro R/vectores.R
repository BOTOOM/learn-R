# vectores

array <- c(1,2,3,4)
print(array)

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