# Instala los paquetes:
install.packages("syuzhet") #Para el analisis texto 
install.packages("RColorBrewer")#Diseño de vizualización 
install.packages("wordcloud")#Diseño de vizualización 
install.packages("tm")#Diseño de vizualización 

# Carga los paquetes
library(syuzhet)
library(RColorBrewer)
library(wordcloud)
library(tm)

#Carga de datos 
Opinion = data.frame(Formulario_de_opinin_pblica)
View(Opinion)
 
#Sacar el vector de texto
vector = Opinion$X1...Cuál.es.su.opinión.sobre.el.gobierno.actual.
vector

#Concatenar 
var =""
for (variable in vector ) {
  var = paste(var,variable,',') 
}

var

#Reglas 
texto_cadena <- var

#1 tokenizar si es obligatorio 
texto_palabras <- get_tokens(texto_cadena)
head(texto_palabras)
length(texto_palabras)


#Correr el algoritmo 
sentimientos_df <- get_nrc_sentiment(texto_palabras, lang="spanish")
View(sentimientos_df)


summary(sentimientos_df)

#Gráfico de barras

barplot(
  colSums(prop.table(sentimientos_df[, 1:8])),
  space = 0.2,
  horiz = FALSE,
  las = 1,
  cex.names = 0.7,
  col = brewer.pal(n = 8, name = "Set3"),
  main = "Opinion pública",
  sub = "Qué opina la sociedad del gobierno actual",
  xlab="emociones", ylab = NULL)

#Simple
barplot(colSums(prop.table(sentimientos_df[, 1:8])))

#Recuento de palabras con cada emoción
palabras_tristeza <- texto_palabras[sentimientos_df$sadness> 0]
palabras_tristeza


palabras_tristeza_orden <- sort(table(unlist(palabras_tristeza)), decreasing = TRUE)
head(palabras_tristeza_orden, n = 12)

length(palabras_tristeza_orden)


#Nube de emociones

nube_emociones_vector <- c(
  paste(texto_palabras[sentimientos_df$sadness> 0], collapse = " "),
  paste(texto_palabras[sentimientos_df$joy > 0], collapse = " "),
  paste(texto_palabras[sentimientos_df$anger > 0], collapse = " "),
  paste(texto_palabras[sentimientos_df$fear > 0], collapse = " "))

nube_emociones_vector <- iconv(nube_emociones_vector, "latin1", "UTF-8")


nube_corpus <- Corpus(VectorSource(nube_emociones_vector))

nube_tdm <- TermDocumentMatrix(nube_corpus)
nube_tdm <- as.matrix(nube_tdm)
head(nube_tdm)