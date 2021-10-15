#Analisis de componentes principales (explorar y resumir datos)
#cuando tenemos variables categoricas, se aplica un proceso llamado
#convertir las variables categoricas en codigo disyuntivo 


library(FactoMineR)
library(readr)
#Cargo datos 
compras_edad <- read_csv("C:/Users/brayn/OneDrive/Universidad Hispano/Modulo 5/Rocio-Chavez-youtube-Files-master/Rocio-Chavez-youtube-Files-master/compras edad.csv")


View(compras_edad)
 
#Creo un temporal 
compras_edad_tem = compras_edad

compras_edad=compras_edad%>%select(carnes,
                      pescados.mariscos,
                      frutas,
                      legumbres,
                      cafe.te.cacao,bebidas_alcoholicas,
                      restauracion,tabaco,
                      ropa.articulos_calzado, 
                      vivienda.agua.gas.electricidad,
                      mobiliario.equipamiento_domestico,
                      salud,transportes,
                      comunicaciones,
                      ocio.cultura,
                      ensenanza)

#Haago el row names con el temporal 
rownames(compras_edad) <- compras_edad_tem$X1


#Generar ACP 
ACP_Compras = PCA(compras_edad,graph = FALSE)

plot(ACP_Compras,choix = "ind")
plot(ACP_Compras,choix = "var")
 

