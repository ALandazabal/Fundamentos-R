#EDA Scatter plot mtcars
plot(mtcars$mpg ~ mtcars$cyl,
     xlab='cilindros', ylab = "millas por gal�n",
     main="Relaci�n cilindros y millas por gal�n")

plot(mtcars$mpg ~ mtcars$hp,
     xlab='caballos de fuerza', ylab = "millas por gal�n",
     main="Relaci�n caballos de fuerza y millas por gal�n")

#EDA  organgeec
plot(orangeec$V8 ~ orangeec$V13,
     xlab="Inversi�n educaci�n (%PIB)",
     ylab= "Desempleo",
     main="Relaci�n inversi�n en educaci�n y desempleo")


plot(orangeec$V8 ~ orangeec$V13,
     xlab="Inversi�n educaci�n (%PIB)",
     ylab= "Desempleo",
     main="Relaci�n inversi�n en educaci�n y desempleo")