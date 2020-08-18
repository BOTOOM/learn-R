## EL ARCHIVO TIENE QUE ESTAR EN LA RAZI DEL DIRACTRIO DE TRABAJO
# comando pasa saber el directorio de trabajo getwd().. este comando se escribe en consola
# este comando le dat¿ra la ruta base, puede dejar su archivo alli, yo cree una carpeta interna
# y la llame testCovid , por ello para acceder a leer el archivo yo uso ./testCovid/ si no crea 
# ninguna carpeta solo colque entre las comillas covid.txt
##------------------------------------
## ALERTA si le sale una mini ventana preguntando un un formato de codificacion o algo asi y salen varias opciones
# use la que le recomienda por defecto, muchas veces es UTF-8 , 

## Llamar los datos ##
dat <- read.table(file = "./testCovid/covid.txt", header=TRUE, dec=",", check.names = F, fileEncoding = "Latin1")

## use print para ver el resultado en consola, si no se usa print se ejecutara pero no mostrara nada
print(names(dat))

##se necesita acceder y crear una tabla de los datos de la columna atencion para ello en remplado d ela guia
# en la guia se usa frec.atencion<-table(atención) , con las versiones actuales de R se debe usar frec.atencion<-table(dat[,"atención"])
frec.atencion<-table(dat[,"atención"])
print(frec.atencion)
pie(frec.atencion)

## esto debe ser para Rstudio en lugar de acceder con el nombre d ela palabra como por ejemplo 'Estado'
# debe usarse dat[,"Estado"]

print(table(dat[,"Sexo"],Estado))
print(table(dat[,"Sexo"],dat[,"Estado"]))
hist(dat[,"Edad"])
stem(dat[,"Edad"])
boxplot(dat[,"Edad"])
print(quantile(dat[,"Edad"], 0.45))
print(summary(dat[,"Edad"]))
print(mean(dat[,"Edad"]))
print(var(dat[,"Edad"]))
print(sd(dat[,"Edad"]))


rango<-max(dat[,"Edad"])-min(dat[,"Edad"]);rango
Nclases<-round(1+3.33*log(length(dat[,"Edad"]),10),0);Nclases
amplitud=(rango/Nclases);amplitud
hist(dat[,"Edad"], seq(min(dat[,"Edad"]),max(dat[,"Edad"]) , by=amplitud)) #histograma con amplitud modificada
hist(dat[,"Edad"], seq(0,120,by=10)) #histograma con amplitud de 10 años como lo hace el Instituot Nacional de Salud