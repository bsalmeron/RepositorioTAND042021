grasas <- read.table('http://verso.mat.uam.es/~joser.berrendero/datos/EdadPesoGrasas.txt', header = TRUE)


grasas = data.frame(grasas)

View(iris)

names(grasas)

#AED-EDA


#Investigación 
pairs(grasas)
#Se puede ver ........


#Resumen de correlación 
cor(grasas)

#Grafica de correlacion 
correlaccion= round(cor(grasas),1) 
#Confirmar la instalacion del paquete
corrplot(correlaccion, method="number", type="upper")
# 
# El comando básico es lm (linear models). 
# El primer argumento de este comando es una fórmula y ~ x 
# en la que se especifica cuál es la variable respuesta
# o dependiente (y) y cuál es la variable regresora o 
# independiente (x). El segundo argumento, llamado data
# especifica cuál es el fichero en el que se encuentran 
# las variables. El resultado lo guardamos en un objeto 
# llamado regresion. Este objeto es una lista que contiene
# toda la información relevante sobre el análisis. 
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


# Cálculo de predicciones
# Supongamos que queremos utilizar la recta de
# mínimos cuadrados para predecir la cantidad de 
# grasas para individuos de edades 31,31,32,.,50.
# Basta crear un fichero de datos que contenga las nuevas
# variables regresoras y usar el comando predict:


nuevas.edades <- data.frame(edad = sample(60:75,10,replace=F))



predict(regresion, nuevas.edades)


