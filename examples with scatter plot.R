#EDA Scatter plot mtcars
plot(mtcars$mpg ~ mtcars$cyl,
     xlab='cilindros', ylab = "millas por galón",
     main="Relación cilindros y millas por galón")

plot(mtcars$mpg ~ mtcars$hp,
     xlab='caballos de fuerza', ylab = "millas por galón",
     main="Relación caballos de fuerza y millas por galón")

#EDA  organgeec
plot(orangeec$V8 ~ orangeec$V13,
     xlab="Inversión educación (%PIB)",
     ylab= "Desempleo",
     main="Relación inversión en educación y desempleo")
