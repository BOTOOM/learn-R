#matrices
vector <- 1:10
print(vector)
matriz <- matrix(vector)
print(matriz)
matriz <- matrix(vector,nrow=2)
print(matriz)
matriz <- matrix(vector,nrow=2,byrow=T)
print(matriz)
##---------------------------------
empresa1 <- c(100,80,90)
empresa2 <- c(50,120,80)
ventas <- c(empresa1,empresa2)
matrizVentas <- matrix(ventas,nrow = 2, byrow = T)
print(matrizVentas)
meses <- c('enero','febrero', 'marzo')
colnames(matrizVentas) <- meses
empresas <- c('empresa1','empresa2')
rownames(matrizVentas) <- empresas
print(matrizVentas)
