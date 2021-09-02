#vECTOR 
 
vector= c(1,2,3,4,5)
class(vector)
vectOrLetras= c("A","B","C")
class(vectOrLetras)

#Operaciones vectores 
vector1= c(1,2,3,4,5)
vecto2= c(11,22,43,42,45)
vectorCalculado = vector1*vecto2
vector1*2

#Otras funciones secuencias
vector3 = 1:10
vector4= seq(1:10)
vector5= seq(1,1000,by=12)
vector6 = rep(1:4,10)

#Extraer datos de un vector 
vectorCalculado  
vectorCalculado[1]  
vectorCalculado[-4] 
vectorCalculado[c(1,4,5)]
vectorCalculado[1:4]

#Funciones de los vectores 
max(vectorCalculado)
min(vectorCalculado)