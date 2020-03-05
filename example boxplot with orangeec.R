#Working with orangeec

#
economy <- mean(orangeec$GDP.PC)
economy

#???
orangeec <- orangeec %>%
  mutate(Strong_economy = ifelse(GDP.PC < economy,
                                "Por debajo promedio pib per capita",
                                 "Sobre Arriba promedio pib per cápita"))

ggplot(orangeec, aes(x=Strong_economy, y=GDP.PC, fill=Strong_economy))+
  geom_boxplot(alpha=0.4)+
  labs(x="Tipo de paìs", y="Aporte economía naranja en pib paises latam con alto y bajo pib per cápita",
       title="Aporte economía naranja al pib")+
  theme(legend.position = "none")+
  theme(panel.background = element_blank(), 
        panel.grid.major = element_blank(),
        panel.grid.minor = element_blank())
