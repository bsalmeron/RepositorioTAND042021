
#Parte 2 caso estadistico
genero = c("F","M","F","F","M","F","M","F","F","M")
Edad = sample(1:30,10) #aleatorios 
Glucemia_basal = c(123,230,180,164,210,220,193,202,152,185) 
Tratamiento=c(TRUE,FALSE,TRUE,TRUE,FALSE,FALSE,TRUE,TRUE,FALSE,TRUE)

#Usar la funcion data.frame para crear el dataframe
mispacientes=data.frame(genero,Edad,Glucemia_basal,Tratamiento)