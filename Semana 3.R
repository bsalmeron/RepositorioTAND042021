#Dataframe

iris
View(iris)
head(iris, n=10)
tail(iris, n=10)
str(iris)
names(iris)
dimnames(iris)
dim(iris)

#Creando un df

# Creamos vectores con los valores
nombre <- c("Juan", "Margarita", "Ruben", "Daniel")
apellido <- c("Sanchez", "Garcia", "Sancho", "Alfara")
fecha_nacimiento <- c("1976-06-14", "1974-05-07", "1958-12-25", "1983-09-19")
sexo <- c("HOMBRE", "MUJER", "HOMBRE", "HOMBRE")
nro_hijos <- c(1, 2, 3, 4)

censo = data.frame(nombre,apellido,fecha_nacimiento,sexo,nro_hijos)

censo
View(censo)
str(censo)
censo$sexo= as.factor(censo$sexo)
plot(censo$sexo)


#Importar datos 

library(readr)
Covid <- read_csv("C:/Users/brayn/OneDrive/Universidad Hispano/Modulo 5/OneDrive_2021-08-24/Modulo 5 BIII 2021/bases de datos/COVID-19 Encuesta a estudiantes.csv")
View(Covid)

class(Covid)

Covid= data.frame(Covid)
str(Covid)

Covid$Prefered.social.media.platform = as.factor(Covid$Prefered.social.media.platform)
plot(Covid$Prefered.social.media.platform)



censo$nro_hijos= censo$nro_hijos+1
censo

nrow(censo)
ncol(censo)
length(censo)

censo[2:4, ]

select(censo,nombre,apellido)
filter(censo, nro_hijos==2)
 

















#Frecuencias 
fuma <- c('Frecuente', 'Nunca', 'A veces', 'A veces', 'A veces',
          'Nunca', 'Frecuente', NA, 'Frecuente', NA, 'hola', 
          'Nunca', 'Hola', 'Frecuente', 'Nunca')

#Frecuencia absoluta uso la funcion table() en una via 
table(fuma)

table(fuma, useNA='always')

table(fuma, exclude=c('Hola', 'hola'))

tabla1 <- table(fuma, exclude=c('Hola', 'hola', NA))
tabla1

#Tabla frecuencias en dos vias 

sexo <- c('Hombre', 'Hombre', 'Hombre', NA, 'Mujer',
          'Casa', 'Mujer', 'Mujer', 'Mujer', 'Hombre', 'Mujer', 
          'Hombre', NA, 'Mujer', 'Mujer')


Datos = data.frame(fuma,sexo)


table(Datos$sexo,Datos$fuma)

tabla2 <- table(sexo, fuma, exclude=c('Hola', 'hola', 'Casa', NA))
tabla2


#Frecuencia relativa una via 

prop.table(x=tabla1)





#Frecuencia relativa en dos vias

tabla3 <- prop.table(x=tabla2)
tabla3


#Tidyvers

install.packages("tidyverse")#Descargamos
library(tidyverse)#Instalamos

#Analisis, explorartorio y limpieza de datos 

data("iris") #Recordar iris es datset de pruebas cargado por R 
#Select select(dataframe, colum.....)
#Generacion de variables temporables para guardar la seleccion muy 
#importante
IrisTemp=select(iris,Species,Petal.Width)
View(IrisTemp)

#Estructura cargada 
class(Productos)
#Covertirlo en df
Productos=data.frame(Productos)
class(Productos)














