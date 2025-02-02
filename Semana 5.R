

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



plot(mis_fechas, rnorm(50), main = "Gr�fico basado en fechas",bg = "blue", 
     type = "l", col="blue", xlab = "A�os", ylab = "Ingresos", 
    ylim = c(1,2), sub = "Serie de tiempo de ingresos", cex.main=1)


#Funcion 
Mi_PrimerFx= function(Fechas,cantidad, titulo, subTitulo){
retorno=  plot(Fechas,cantidad , main = titulo,
       type = "l", col="blue", xlab = "A�os", ylab = "Ingresos", 
        sub = subTitulo, cex.main=1)
   return(retorno)
}



#Generar una serie tiempo de los salarios de EMPLEADOS por a�o 
Fechas = seq(as.Date("2005/1/1"), by = "month", length = 50)
SalariosMensuales= rnorm(50, mean = 500, sd = 8)
Df_SalariosAnuales = data.frame(Fechas,SalariosMensuales)
View(Df_SalariosAnuales)

Mi_PrimerFx(Df_SalariosAnuales$Fechas,Df_SalariosAnuales$SalariosMensuales,
            "Representacion salarios anual",
             "Indice de salarios empresa Patitos")


#Generar una serie de tiempo de muertes por a�o
Fechas = seq(as.Date("2005/1/1"), by = "month", length = 50)
Muertes= rnorm(50, mean = 2000, sd = 8)
df_muertes = data.frame(Fechas,Muertes)
View(df_muertes)

GraficoMuertesAnuales = Mi_PrimerFx(df_muertes$Fechas,df_muertes$Muertes,
            "Representacion muertes por a�o",
            "Datos de la CCSS")







