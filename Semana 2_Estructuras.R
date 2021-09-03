#Se puede aplicar funciones aritmeticas 
x=1:10
sqrt(x)

#Alterarlo por medio de procedimientos 
b= (10+2)*(1:10)
b

#Funciones de los vectores
c= 1:30
length(c)
max(c)
min(c)
sum(c)
mean(c)
sort(c, dec=TRUE)
rev(c)

#Manejo de valores vacios
d=1:10
d
d[13]=13
d
sum(d)

#identificar cuantos NA tengo 
which(is.na(d))
vectorTemp= x[!is.na(x)]
vectorTemp
sum(vectorTemp)
sum(na.omit(d))

#Factor: Categoria 
tallas=c("S","M","XL","XXL","S","M","XL","XXL","S","M","XL","XXL","S","M","XL","XXL")
class(tallas)
TallasFactor= as.factor(tallas)
class(TallasFactor)



