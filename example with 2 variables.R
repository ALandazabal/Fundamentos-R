#scatter plot con ggplot en mtcars - dos variables
ggplot(mtcars, aes(hp,mpg))+
  geom_point()+
  labs(x="Caballos de fuerza", y="Millas por galòn",
       title="Relación caballos de fuerza y millas por galón")+
  theme(legend.position = "none")+
  theme(panel.background = element_blank(), 
        panel.grid.major = element_blank(),
        panel.grid.minor = element_blank())

ggplot(mtcars, aes(wt,hp))+
  geom_point()+
  labs(x="peso", y="Potencia",
       title="Relación peso-potencia")+
  theme(legend.position = "none")+
  theme(panel.background = element_blank(), 
        panel.grid.major = element_blank(),
        panel.grid.minor = element_blank())


#
ggplot(mtcars, aes(hp, qsec))+
  geom_point(aes(color=am,size=cyl))+
  labs(x="Caballos de fuerza", y="Tiempo en 1/4 milla",
       title = "Caballos-velocidad segùn cilindraje y tipo de caja")

#
my_grap <- ggplot(orangeec, aes(V10, V6, label=row.names(orangeec)))+
  geom_point()+
  labs(x="Penetraciòn internet", y="Aporte economia naranja",
       title="Penetraciòn Internet y aporte economía naranja")
my_grap

p = ggplotly(my_grap)
p