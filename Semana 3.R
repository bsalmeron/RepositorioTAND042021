
iris
iris %>%group_by(Species) %>%summarise(Cantidad=n())

mispacientes %>%group_by(genero) %>%summarise(Cantidad=mean(Edad))

data(gapminder)
