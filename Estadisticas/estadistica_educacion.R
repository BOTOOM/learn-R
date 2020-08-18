#dat <- read.table(file = "./Estadisticas/ESTADISTICAS_EN_EDUCACION_BASICA_POR_DEPARTAMENTO.xlsx", header=TRUE, dec=",", check.names = F, fileEncoding = "Latin1")


#conversion a csv y apertura de archivo
#dat <- read.csv(file = "./Estadisticas/ESTADISTICAS_EN_EDUCACION_BASICA_POR_DEPARTAMENTO.csv", header=TRUE, dec="," sep" ")
dat <- read.csv("./Estadisticas/ESTADISTICAS_EN_EDUCACION_BASICA_POR_DEPARTAMENTO.csv", stringsAsFactors=F, dec=",", header=TRUE, check.names = F,sep=" ", quote = "\"")

tasaMatriculacion <- (dat$TASA_MATRICULACIÓN_5_16)
print(tasaMatriculacion)
print(mean(tasaMatriculacion))
print(sd(tasaMatriculacion))


coberturaNeta <- as.numeric(dat$COBERTURA_NETA)
print(mean(coberturaNeta))
print(sd(coberturaNeta))

desercion <- as.numeric(dat$DESERCIÓN)
aprobacion <- as.numeric(dat$APROBACIÓN)
repitencia <- as.numeric(dat$REPITENCIA)
boxplot(dat$DESERCIÓN )
boxplot(dat$COBERTURA_NETA,dat$DESERCIÓN,dat$APROBACIÓN, dat$REPITENCIA )
departamento.poblacion <- data.frame(departamento= dat$DEPARTAMENTO ,poblacion= dat$POBLACION_5_16 )
#> install.packages("ggplot2")
library(ggplot2)

topPoblacion <- head(departamento.poblacion ,sort(departamento.poblacion$poblacion,decreasing=TRUE), n = 8)
ggplot(topPoblacion, aes(departamento, poblacion)) + geom_col() +ggtitle("Cuidades mas pobladas")


pie(dat$POBLACION_5_16)
pie(topPoblacion$poblacion)
ggplot(departamento.poblacion, aes(x="", y=poblacion, fill=departamento)) + geom_bar(width = 1,stat = 'identity') +ggtitle("Cuidades mas pobladas") + coord_polar("y", start=0)
ggplot(topPoblacion, aes(x="", y=poblacion, fill=departamento)) + geom_bar(width = 1,stat = 'identity') +ggtitle("Cuidades mas pobladas") + coord_polar("y", start=0)
