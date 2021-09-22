

View(Productos)
str(Productos)
#Conversion datos 
Productos$list_price = as.double(Productos$list_price)

hist(Productos$list_price, 
     main = "Histograma precios productos", 
     xlab = "Rango precios", ylab = "Frecuencia", 
     col = "red")

#Plot
help(hist)
?plot
#Iris es un estudio que fue realizado por la univercidad biologica
#donde se estudiaron 3 tipos de especie
plot(iris$Sepal.Length, iris$Petal.Length)


#Relacion o correlacion 
#cuando una variable afecta la otra ya sea + o -

#Factor
class(financials$Sector)
financials$Sector = as.factor(financials$Sector)
plot(financials$Sector)
plot(iris$Species)

plot(mis_fechas,cantidad)


mis_fechas <- seq(as.Date("2005/1/1"), by = "month", length = 50)



plot(mis_fechas, rnorm(50), main = "Gráfico basado en fechas",bg = "blue", 
     type = "l", col="blue", xlab = "Años", ylab = "Ingresos", 
    ylim = c(1,2), sub = "Serie de tiempo de ingresos", cex.main=1)


#Funcion 
Mi_PrimerFx= function()






