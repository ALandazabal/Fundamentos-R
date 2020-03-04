#mtcars histogram qplot
qplot(mtcars$hp,
      geom="histogram",
      xlab="Caballos de fuerza",
      main="Carros según caballos de fuerza")

ggplot(mtcars, aes(x=hp))+
  geom_histogram(binwidth = 30)+
  labs(x="Caballos de fuerza", y="Cantidad de carros",
       title="Caballos de fuerza en carros seleccionados")+
  theme(legend.position = "none")+
  theme(panel.background = element_blank(), panel.grid.major = element_blank(),
        panel.grid.minor = element_blank())

ggplot()+geom_histogram(data=mtcars,
                        aes(x=hp), fill="blue", color="red",
                        binwidth = 20)+
  labs(x="Caballos de fuerza", y="Cantidad de carros",
       title="Caballos de fuerza en carros seleccionados")+
  xlim(c(80,280))+
  theme(legend.position = "none")+
  theme(panel.background = element_blank(), panel.grid.major = element_blank(),
        panel.grid.minor = element_blank())



ggplot()+geom_histogram(data=orangeec,
                        aes(x=V2), fill="red", color="yellow",
                        binwidth = 5)+
  labs(x="Penetración internet(%) pobación", y="Cantidad de paises",
       title="Penetración de internet en paises latam")+
  scale_x_continuous(breaks = seq(40,100,5))+
  theme(legend.position = "none")+
  theme(panel.background = element_blank(), 
        panel.grid.major = element_blank(),
        panel.grid.minor = element_blank())
