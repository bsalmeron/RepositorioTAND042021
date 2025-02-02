grasas <- read.table('http://verso.mat.uam.es/~joser.berrendero/datos/EdadPesoGrasas.txt', header = TRUE)


grasas = data.frame(grasas)

View(iris)

names(grasas)

#AED-EDA


#Investigaci�n 
pairs(grasas)
#Se puede ver ........


#Resumen de correlaci�n 
cor(grasas)

#Grafica de correlacion 
correlaccion= round(cor(grasas),1) 
#Confirmar la instalacion del paquete
corrplot(correlaccion, method="number", type="upper")
# 
# El comando b�sico es lm (linear models). 
# El primer argumento de este comando es una f�rmula y ~ x 
# en la que se especifica cu�l es la variable respuesta
# o dependiente (y) y cu�l es la variable regresora o 
# independiente (x). El segundo argumento, llamado data
# especifica cu�l es el fichero en el que se encuentran 
# las variables. El resultado lo guardamos en un objeto 
# llamado regresion. Este objeto es una lista que contiene
# toda la informaci�n relevante sobre el an�lisis. 
# Mediante el comando
# summary obtenemos un resumen de los principales resultados:

#Regresion lineal (y= variable a predecir - x = regresora, data = df) 
regresion <- lm(grasas ~ edad, data = grasas)
summary(regresion)

#R2 0.70 = 70%

#100% - 70% = 30%

#Ploteo de regresion 
plot(grasas$edad, grasas$grasas, xlab='Edad', ylab='Grasas')
abline(regresion)


# C�lculo de predicciones
# Supongamos que queremos utilizar la recta de
# m�nimos cuadrados para predecir la cantidad de 
# grasas para individuos de edades 31,31,32,.,50.
# Basta crear un fichero de datos que contenga las nuevas
# variables regresoras y usar el comando predict:


nuevas.edades <- data.frame(edad = sample(60:75,10,replace=F))



predict(regresion, nuevas.edades)


