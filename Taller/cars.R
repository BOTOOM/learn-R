# install.packages("ggplot2",repos = "http://cran.us.r-project.org")
# install.packages("tidyverse",repos = "http://cran.us.r-project.org")
# install.packages("patchwork",repos = "http://cran.us.r-project.org")
library(ggplot2)
# library(tidyverse)
estadisticos <- function(feature, name) {
    cat('\n','Varieble Cuatitativa: ',name, '\n')
    media <- mean(feature)
    print('Media')
    print(media)
    mediana <- median(feature)
    print('Mediana')
    print(mediana)
    varianza <- var(feature)
    print('Varianza')
    print(varianza)
    desv_est <- sd(feature)
    print('Desviacion Estandar')
    print(desv_est)
    coef_var <- desv_est/media
    print('Coeficiente de variación')
    print(coef_var)
    cuartiles <- quantile(feature, c(0, 0.25, 0.5, 0.75, 1))
    print('Cuartiles')
    print(cuartiles)
}
cat('Punto 1: ', '\n')
# Encuentre la media, la mediana, la varianza y la desviación estándar
# de la muestra, el coeficiente de variación y los cuartiles de las
# variables cuantitativas. desviación, coeficiente de variación y
# cuartiles para las variables cuantitativas.
estadisticos(mpg$displ,'displ')
estadisticos(mpg$cyl,'cyl')
estadisticos(mpg$cty,'cty')
estadisticos(mpg$hwy,'hwy')
estadisticos(mpg$cty,'cty')

cat('\n', 'Punto 2: ', '\n')
# Hacer boxplots para comparar las características cty y hwy
bp1 <- ggplot(mpg, aes(cty)) +
geom_boxplot()
bp2 <- ggplot(mpg, aes(hwy)) +
geom_boxplot()
bp1
library(patchwork)
bp1/bp2

cat("\n", "Punto 3: ", "\n")
# Realiza histogramas con las variables displ y cyl. Establece
# el número de bins para n datos con la regla de Sturges:
# k = 1 + 3,332 log 10(n) para la variable displ. Para la variable
# cyl utilice 5 intervalos para construir el histograma.
k_sturges <- round(1 + 3.322*log(nrow(mpg), 10))
hist1 <- ggplot(mpg, aes(displ)) +
geom_histogram(bins = k_sturges)
hist2 <- ggplot(mpg, aes(cyl)) +
geom_histogram(bins=5)
hist1+hist2

cat("\n", "Punto 4: ", "\n")
# Haz un gráfico de dispersión con las variables cty y displ. ¿Hay algún patrón? Comente.
ggplot(mpg, aes(cty, displ)) +
geom_point()

cat("\n", "Punto 5: ", "\n")
# ¿Cree usted que existe una relación entre el tipo de tren motriz (drv)
# y el consumo de combustible? ¿Qué tipo de análisis realizarías para
# resolver esta cuestión?
ggplot(mpg, aes(drv, cty)) +
geom_boxplot()
