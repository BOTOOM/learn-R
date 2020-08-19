#dat <- read.table(file = "./Estadisticas/ESTADISTICAS_EN_EDUCACION_BASICA_POR_DEPARTAMENTO.xlsx", header=TRUE, dec=",", check.names = F, fileEncoding = "Latin1")


#conversion a csv y apertura de archivo
#dat <- read.csv(file = "./Estadisticas/ESTADISTICAS_EN_EDUCACION_BASICA_POR_DEPARTAMENTO.csv", header=TRUE, dec="," sep" ")
dat <- read.csv("./Estadisticas/ESTADISTICAS_EN_EDUCACION_BASICA_POR_DEPARTAMENTO.csv", stringsAsFactors=F, dec=",", header=TRUE, check.names = F,sep=" ", quote = "\"",fileEncoding = "UTF-8")

tasaMatriculacion <- (dat$TASA_MATRICULACIÓN_5_16)
print(tasaMatriculacion)
print(mean(tasaMatriculacion))
print(sd(tasaMatriculacion))


coberturaNeta <- as.numeric(dat$COBERTURA_NETA)  # 891.21
print(mean(coberturaNeta))
print(sd(coberturaNeta))

desercion <- as.numeric(dat$DESERCIÓN)
aprobacion <- as.numeric(dat$APROBACIÓN)
repitencia <- as.numeric(dat$REPITENCIA)
boxplot(dat$DESERCIÓN )
boxplot(aprobacion)


boxplot(dat$COBERTURA_NETA,dat$DESERCIÓN,dat$APROBACIÓN, dat$REPITENCIA )


departamento.poblacion <- data.frame(departamento= dat$DEPARTAMENTO ,poblacion= dat$POBLACION_5_16 )
#> install.packages("ggplot2")
library(ggplot2)

tablaOdenada <- departamento.poblacion[ order( departamento.poblacion$poblacion , decreasing = T ) , ]

topPoblacion <- head(tablaOdenada, n = 8)
topPoblacion <- head(departamento.poblacion , n = 8)

ggplot(topPoblacion, aes(departamento, poblacion)) + geom_col() + ggtitle("Cuidades mas pobladas")


pie(dat$POBLACION_5_16)
pie(dat$POBLACION_5_16, labels = dat$DEPARTAMENTO)

pie(topPoblacion$poblacion)
#todos los departamentos
ggplot(departamento.poblacion, aes(x="", y=poblacion, fill=departamento)) + geom_bar(width = 1,stat = 'identity') +ggtitle("Cuidades mas pobladas") + coord_polar("y", start=0)
# solo top de poblacion
ggplot(topPoblacion, aes(x="", y=poblacion, fill=departamento)) + geom_bar(width = 1,stat = 'identity') +ggtitle("Cuidades mas pobladas") + coord_polar("y", start=0)


# install.packages("fdth")
library(fdth)
dist <- fdt(dat$REPITENCIA,breaks="Sturges")
#histograma normal
plot(dist, type="cfh", main = "histograma de Fi de repitencia", xlab="Repitencia")
# ojiva del histograma
plot(dist, type="cfp",main = "histograma de Fi de repitencia", xlab="Repitencia") 
