#"ejercicio"
#1. crear un vector llamado ventas con los valores 120,140,90
#2. asignar estos valores "enero", "febrero, "marzo" como nombres de las columnas del vector
#3. calcular la mediana de ventas en los 3 meses
#4. crear un nuevo vector con los elementos mayores a 100
#5. calcular cual es el mes xon mayores ventas

# SOLUCION

#1. 
ventas <- c(120,140,90)
#2
meses <- c('enero','febrero', 'marzo')
names(ventas) <- meses
print(ventas)
#3 
mediana <- mean(ventas)
print(mediana)
#4.
filtro <- ventas > 100
ventasMayyores100 <- ventas[filtro]
print(ventasMayyores100)
#5.
filtroMax <- ventas == max(ventas)
print (ventas[filtroMax])