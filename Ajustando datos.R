#Ajustando datos para mejorar visualizaciones
eficientes <- mean(mtcars$mpg)
eficientes

mtcars <- mtcars %>%
  mutate(Mas_eficientes=ifelse(mpg<eficientes,
                               "bajo promeio", "en ó sobre promedio"))

Mas_veloces <- mtcars[mtcars$qsec<16,]
Mas_veloces

mtcars <- mtcars %>%
  mutate(Velocidad_Cuarto_milla=ifelse(qsec < 16,
                                       "Menos 16 segs",
                                       "Mas de 16 segs"))
mtcars <- mtcars %>% #Que pasa a
  mutate(Peso_kilos=(wt/2)*1000)

mtcars <- mtcars %>%
  mutate(Peso=ifelse(Peso_kilos <= 1500,
                     "Livianos",
                     "Pesados"))

#
orangeec <- orangeec %>%
  mutate(Crecimiento_GDP = ifelse(GDP.Growth.porcentaje >= 2.5,
                                  "2.5% ó más", "Menos 2.5%"))

orangeec <- orangeec %>%
  mutate(Anaranjados = ifelse(Creat.Ind.porcentaje.GDP >= 2.5,
                                  "Más anaranjados", "Menos anaranjados"))

#Ranking
orangeec %>%
  arrange(desc(Creat.Ind.porcentaje.GDP))

TopNaranjas <- orangeec %>%
  filter(Country %in% c("Mexico", "Panama", "Argentina", 
                        "Colombia", "Brazil"))

TopNaranjas

#
TopNaranjas %>%
  arrange(desc(Creat.Ind.porcentaje.GDP))
