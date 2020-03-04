#???pairs
pairs(mtcars[,2:6])


#Let's select the cols to show
newdata <- subset(mtcars, select = c(2,7:8,11,12))
pairs(newdata)

#Let's rid the cols in the view
pairs(mtcars[,-c(1,3,4,5,6,9,10)])


#Using filter
Eficientes <- filter(mtcars, mpg >=30)
Eficientes

#
pairs(Eficientes[,2:6])

#
merc <- mtcars %>%
  filter(str_detect(model, 'Merc'))
merc

pairs(merc[,2:6])

#La función cor nos retorna la correlación entre los datos. 
#  Recordemos que el valor de una correlación va de -1 a 1, 
#  si se acerca a 0 no hay correlación.

pairs(mtcars[,2:6])
cor(mtcars[,2:6])

#
newdata <- subset(orangeec, select=c(5,6,10,11,12,13))
newdata

pairs(newdata)

#If only you want to work with complete data
cor(orangeec[,V2:V6])
cor(orangeec[,2:6], use = "complete.obs")

cor(newdata)

#Desviación estándar
summary(mtcars)
des <- sd(mtcars$mpg)
prom <- mean(mtcars$mpg)

CoefVar <- (des/prom)*100
CoefVar

#orangeec
summary(orangeec)

desv <- sd(orangeec$V12, na.rm = TRUE)
desv

prom <- mean(orangeec$V12, na.rm = TRUE)
prom

CoefVar <- (desv/prom)*100
#NOTA: Si el Coef supera el 25%, esto nos indica que es mejora
  #apoyarnos en la mediana o en un cuartil para hacer conclusiones

