# install.packages("languageserver",repos = "http://cran.us.r-project.org")
library(ggplot2)

ggplot(data = mtcars) +
  geom_point(aes(mpg, qsec, colour = factor(am))) +
  facet_grid(~vs)