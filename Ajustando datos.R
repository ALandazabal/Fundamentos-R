#Ajustando datos para mejorar visualizaciones
eficientes <- mean(mtcars$mpg)
eficientes

mtcars <- mtcars %>%
  mutate(Mas_eficientes=ifelse(mpg<eficientes,
                               "bajo promeio", "en � sobre promedio"))

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
  mutate(Crecimiento_GDP = ifelse(V4 >= 2.5,
                                  "2.5% � m�s", "Menos 2.5%"))

orangeec <- orangeec %>%
  mutate(Anaranjados = ifelse(V6 >= 2.5,
                                  "M�s anaranjados", "Menos anaranjados"))

#Ranking
orangeec %>%
  arrange(desc(V6))

TopNaranjas <- orangeec %>%
  filter(V1 %in% c("Mexico", "Panama", "Argentina", 
                        "Colombia", "Brazil"))

TopNaranjas

#
TopNaranjas %>%
  arrange(desc(V6))