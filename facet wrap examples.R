#Let's show more information

mtcars %>
  arrange(desc(Peso_kilos))

Mas_pesados <- mtcars %>%
  filter(model %in% c("Lincoln Continental", "Chrysler Imperial",
                      "Cadillac Fleetwood", "Merc 450SE"))
#Nota: Filter es para filas


Mas_pesados

#
ggplot(Mas_pesados, aes(x=hp, y=mpg))+
  geom_point()+
  facet_wrap(~model) #Permite obtener un cuadrante para cada opción

ggplot(mtcars, aes(x=cyl, y=mpg, size=Peso_kilos))+
  geom_point()+
  facet_wrap(~ am)

#orangeec
TopNaranjas <- orangeec %>%
  filter(Country %in% c("Mexico", "Panama", "Argentina", 
                   "Colombia", "Brazil", "Paraguay"))

TopNaranjas

ggplot(TopNaranjas, aes(x=V10, V5, size=V2))+
  geom_point()+
  facet_wrap(~V1)

ggplot(TopNaranjas, aes(x=V13, V6, size=V8))+
  geom_point()+
  facet_wrap(~Country)

#
myColors <- brewer.pal(9,"Reds")

ggplot(TopNaranjas, aes(x=Internet.penetration.porcentaje.population,
                        GDP.PC, fill=Creat.Ind.porcentaje.GDP))+
  geom_tile()+
  facet_wrap(~Country)+
  scale_fill_gradientn(colors=myColors)

