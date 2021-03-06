#mtcars histogram qplot
qplot(mtcars$hp,
      geom="histogram",
      xlab="Caballos de fuerza",
      main="Carros seg�n caballos de fuerza")

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



ggplot()+geom_histogram(data=mtcars,
                        aes(x=cyl), fill="blue", color="red",
                        binwidth = 1)+
  labs(x="Caballos de fuerza", y="Cantidad de carros",
       title="Caballos de fuerza en carros seleccionados")+
  xlim()+
  theme(legend.position = "none")+
  theme(panel.background = element_blank(), panel.grid.major = element_blank(),
        panel.grid.minor = element_blank())

ggplot()+geom_histogram(data=orangeec,
                        aes(x=V2), fill="red", color="yellow",
                        binwidth = 5)+
  labs(x="Penetraci�n internet(%) pobaci�n", y="Cantidad de paises",
       title="Penetraci�n de internet en paises latam")+
  scale_x_continuous(breaks = seq(40,100,5))+
  theme(legend.position = "none")+
  theme(panel.background = element_blank(), 
        panel.grid.major = element_blank(),
        panel.grid.minor = element_blank())

ggplot()+geom_histogram(data=orangeec,
                        aes(x=V6), fill="red", color="yellow",
                        binwidth = 1)+
  theme(legend.position = "none")+
  theme(panel.background = element_blank(), 
        panel.grid.major = element_blank(),
        panel.grid.minor = element_blank())
