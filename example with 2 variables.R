#scatter plot con ggplot en mtcars - dos variables
ggplot(mtcars, aes(hp,mpg))+
  geom_point()+
  labs(x="Caballos de fuerza", y="Millas por gal�n",
       title="Relaci�n caballos de fuerza y millas por gal�n")+
  theme(legend.position = "none")+
  theme(panel.background = element_blank(), 
        panel.grid.major = element_blank(),
        panel.grid.minor = element_blank())

ggplot(mtcars, aes(wt,hp))+
  geom_point()+
  labs(x="peso", y="Potencia",
       title="Relaci�n peso-potencia")+
  theme(legend.position = "none")+
  theme(panel.background = element_blank(), 
        panel.grid.major = element_blank(),
        panel.grid.minor = element_blank())


#
ggplot(mtcars, aes(hp, qsec))+
  geom_point(aes(color=am,size=cyl))+
  labs(x="Caballos de fuerza", y="Tiempo en 1/4 milla",
       title = "Caballos-velocidad seg�n cilindraje y tipo de caja")

#
my_grap <- ggplot(orangeec, aes(V10, V6, label=row.names(orangeec)))+
  geom_point()+
  labs(x="Penetraci�n internet", y="Aporte economia naranja",
       title="Penetraci�n Internet y aporte econom�a naranja")
my_grap

p = ggplotly(my_grap)
p