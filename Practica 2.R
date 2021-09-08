
#Parte 2 caso estadistico
genero = c("F","M","F","F","M","F","M","F","F","M")
Edad = sample(1:30,10) #aleatorios 
Glucemia_basal = c(123,230,180,164,210,220,193,202,152,185) 
Tratamiento=c(TRUE,FALSE,TRUE,TRUE,FALSE,FALSE,TRUE,TRUE,FALSE,TRUE)

#Usar la funcion data.frame para crear el dataframe
mispacientes=data.frame(genero,Edad,Glucemia_basal,Tratamiento)
View(mispacientes)

#Descripción de datos cuantitativos  Glusemina basal 

#Maximo valor de la glusemina para traer una columna a la vez uso $
max(mispacientes$Glucemia_basal)

#Min valor de la glusemina para traer una columna a la vez uso $
min(mispacientes$Glucemia_basal)

#Media
mean(mispacientes$Glucemia_basal)

#Dev standar 
sd(mispacientes$Glucemia_basal)
#Redondeo 
round(sd(mispacientes$Glucemia_basal),2)


