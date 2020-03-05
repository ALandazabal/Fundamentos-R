summary(orangeec$GDP.PC)

newdata <- subset(orangeec, select=c(Services.porcentaje.GDP,GDP.PC))
newdata

pairs(newdata)
cor(newdata)

newdata <- subset(mtcars, select=c(hp,qsec))
newdata

ggplot(orangeec, aes(x=GDP.US.bill, GDP.Growth.porcentaje))+
  geom_point()+
  facet_wrap(~Crecimiento_GDP)


#Ranking
newdata <- subset(orangeec, select=c(Country, Creat.Ind.porcentaje.GDP, Unemployment))
newdata

newdata %>%
  arrange(desc(Creat.Ind.porcentaje.GDP))

TopNaranjas <- orangeec %>%
  filter(Country %in% c("Mexico", "Panama", "Argentina", 
                        "Colombia", "Brazil"))

TopNaranjas

#
TopNaranjas %>%
  arrange(desc(Creat.Ind.porcentaje.GDP))

#Histograms
ggplot()+geom_histogram(data=orangeec,
                        aes(x=Creat.Ind.porcentaje.GDP), fill="red", color="yellow",
                        binwidth = 1)+
  theme(legend.position = "none")+
  theme(panel.background = element_blank(), 
        panel.grid.major = element_blank(),
        panel.grid.minor = element_blank())

#Corr
newdata <- subset(orangeec, select=c(GDP.Growth.porcentaje,Creat.Ind.porcentaje.GDP))
newdata

pairs(newdata)
cor(newdata, use = "complete.obs")

#Boxplot
ggplot(orangeec, aes(x=Strong_economy, y=Internet.penetration.porcentaje.population, fill=Strong_economy))+
  geom_boxplot(alpha=0.4)+
  labs(x="Tipo de paìs", y="Aporte economía naranja en pib paises latam con alto y bajo pib per cápita",
       title="Aporte economía naranja al pib")+
  theme(legend.position = "none")+
  theme(panel.background = element_blank(), 
        panel.grid.major = element_blank(),
        panel.grid.minor = element_blank())

#Scatter plot
ggplot(orangeec, aes(x=Education.invest.porcentaje.GDP, Creat.Ind.porcentaje.GDP))+
  geom_point(aes(color=Strong_economy))