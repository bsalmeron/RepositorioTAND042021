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
levels(TallasFactor)

#Matriz : conjunto de vectores del mismo tipo 


v1=1:4
v2=5:8
v3=9:12
v4=13:16

Var_Matriz=rbind(v1,v2,v3,v4)
Var_Matriz

Var_Matriz2=cbind(v1,v2,v3,v4)
Var_Matriz2[2,]

v5 = c(NA,1,2)
v6= c(3,4,NA)
Var_Matriz3 = cbind(v5,v6)
Var_Matriz3



x=1:12
matrix(x,nrow = 3)
#Funciones con las matriz

nrow(Var_Matriz3)
ncol(Var_Matriz3)

colnames(Var_Matriz2)= c("Perdidas","Q22020","Q32020","Q12021")
 
Var_Matriz2

sum(Var_Matriz2[,"Perdidas"])
rowSums(Var_Matriz2)
rowMeans(Var_Matriz2)
colMeans(Var_Matriz2)

