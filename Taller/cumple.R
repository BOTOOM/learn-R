# Consideremos 50 personas que asisten a una reunión. Suponemos que cada persona tiene una
# probabilidad de nacer en cualquier día del año, independientemente de los demás.
# y no tenemos en cuenta la complicación adicional que suponen los años bisiestos. ¿Cuál es la
# probabilidad de que cada persona tenga un cumpleaños distinto?
total=1; 
cantidad_personas=50
for(i in 1:cantidad_personas) { 
  total=total*((365-i)/365)
}
cat("La probabilidad de que en un grupo de ",cantidad_personas," personas, cada persona tenga un cumpleaños diferente es de:",total)
# La probabilidad de que en un grupo de  50  personas, cada persona tenga un cumpleaños diferente es de: 0.02556801