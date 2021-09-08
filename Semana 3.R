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
group_by()
inner_join()

