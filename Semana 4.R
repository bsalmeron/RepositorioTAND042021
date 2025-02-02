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
#Exploracion basica de los datos 
#Top 10
head(Productos, n=10)
tail(Productos, n=10)
summary(Productos)
str(Productos)
View(head(Productos, n=10))
#Seleccionar nuestros datos 
#A seleccion de marca y a�o
Productos_Marca_anio=select(Productos,model_year,brand_id)
View(Productos_Marca_anio)
#B Seleccion de Producto_Id y categoria select(df,columnas)
Productos_Id_Categoria = select(Productos,product_id,category_id)
View(Productos_Id_Categoria)

#Filter() Filter(df, filtros)
#Filtrar por a�o 2017
Productos_Marca_anio_2017=filter(Productos_Marca_anio,model_year==2017)
View(Productos_Marca_anio_2017)

#and = & 
#or =|
#==
#!=
filter(Productos_Marca_anio,model_year==2017 & brand_id<7 )

#Rename (df, NombreNuevo=NombreViejo) = renombrar 
Productos_Marca_anio =rename(Productos_Marca_anio,A�o=model_year)
View(Productos_Marca_anio)

#arrange (df,columnaOrdenar)

Productos
View(arrange(Productos,brand_id))#Asc
View(arrange(Productos,desc(brand_id)))#desc

#mutate mutate(df, nombreColumna =operacion)
Productos_alterados=mutate(Productos,FechaHoy=Sys.Date())

Productos_alterados=mutate(Productos_alterados,Antiguedad=2021-model_year)

Productos_alterados=mutate(Productos_alterados,PrecioIva=as.numeric(list_price) + (as.numeric(list_price))*0.13)

#Group by

# data =  Personas%>%group_by(sexo)%>%
# summarise(n(id))
# 
# SQL
#
# Select  sexo,  count(Id) from personas
# Group by sexo

 
 Productos%>%group_by(brand_id)%>%
            summarise(Cantidad=n())%>%
            filter(Cantidad>=10)%>%
            arrange(Cantidad)

 
 hist(as.double(Productos$list_price))
 
 Facturas_Ventas=merge(Datos_Facturas,Datos_ventas,"EmployeeID") 
 Facturas_Ventas%>%group_by(EmployeeID)%>%summarise(n())
 
 #Correlacion IRIS
 
 peso <- c(51, 59, 49, 54, 50, 55, 48, 53, 52, 57)
 long <- c(33.5, 38, 32, 37.5, 31.5, 33, 31, 36.5, 34, 35)
 
 df_info= data.frame(peso,long)
 
 pairs(df_info$long ~ df_info$peso)
 

 
 
Productos
Probabilidad =select(Productos,brand_id,model_year,model_year)%>%
filter(as.integer(model_year)>2017)%>%group_by(brand_id)%>%summarise(Cantidad=n())


 
#JOINS

#Outer join: merge(x = df1, y = df2, by = "CustomerId", all = TRUE)

Almacen=rename(Almacen, ID_Almacen=ID)

inner_join= merge(Almacen, Base_datos_productos, by = "ID_Almacen")#Inner join 
View(inner_join)

left_join =merge(Almacen, Base_datos_productos, by = "ID_Almacen", all.x = TRUE)

View(left_join)


Right_join =merge(Almacen, Base_datos_productos, by = "ID_Almacen", all.y = TRUE)

View(Right_join)




























