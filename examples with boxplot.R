#boxplot: Se debe de tener una variable categ�rica
#   en el eje X, y una variable num�rica en el eje Y
boxplot(mtcars$hp,
        ylab="Caballos de fuerza",
        main="Caballos de fuerza en carros mtcars")

#
ggplot(mtcars, aes(x=as.factor(cyl), y=hp, fill=cyl))+
  geom_boxplot(alpha=0.6)+
  labs(x="Cilindros", y="Caballos de fuerza",
         title="Caballos de fuerza seg�n cilindros en mtcars")+
  theme(legend.position = "none")+
  theme(panel.background = element_blank(), panel.grid.major = element_blank(),
        panel.grid.minor = element_blank())


#???NOTA: Cajas alargadas nos insinuan datos desviados
#Cajas chatas nos insinuan datos homog�neos, es decir, cerca al promedio

#Change labels
mtcars$am <- factor(mtcars$am, levels = c(TRUE, FALSE),
                    labels = c("Manual", "Autom�tico"))


ggplot(mtcars, aes(x=am, y=mpg, fill=am))+
  geom_boxplot()+
  labs(x="Tipo de caja", y="Millas por gal�n",
       title="Millas por gal�n seg�n tipo de caja mtcars")+
  theme(legend.position = "none")+
  theme(panel.background = element_blank(), panel.grid.major = element_blank(),
        panel.grid.minor = element_blank())

