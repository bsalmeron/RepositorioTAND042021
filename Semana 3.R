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