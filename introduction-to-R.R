4 + 8 "THis is a math operation"

x <- 86 "This is a assignment"
x

str(mtcars) "Show the data structure"
 "?mtcars show a description about dataset"

class(mtcars$vs) "Show the class of a variable"
mtcars$vs = as.logical(mtcars$vs) "Transform to logical a type of variable"
mtcars$am = as.logical(mtcars$am)

str(orangeec)

summary(orangeec) "Make a brief about our dataset"

wt <- (mtcars$wt*1000)/2
wt

mtcars.new <- transform(mtcars, wt=wt*1000/2) "Transform a variable"
mtcars.new

"Num ARRAYS"
tiempo_platzi <- c(25,5,10,15,10)
t_lecturas <- c(30,10,5,10,15)
t_aprendizaje <- tiempo_platzi + t_lecturas
t_aprendizaje

"string ARRAYS"
dias_aprendizaje <- c("Lunes", "Martes", "Miercoles", "Jueves", "Viernes")
dias_aprendizaje

"Bool ARRAYS"
dias_mas_20min <- c(TRUE, FALSE, FALSE, TRUE, TRUE)
dias_mas_20min

"Sum ARRAYS"
total_tiempo_platzi <- sum(tiempo_platzi)
total_tiempo_platzi
total_tiempo_lectura <- sum(t_lecturas)
total_tiempo_lectura
total_tiempo_adicional <- total_tiempo_platzi + total_tiempo_lectura
total_tiempo_adicional

"Matrix"
tiempo_matrix <- matrix(c(tiempo_platzi, t_lecturas), nrow = 2,byrow=TRUE)

"labels"
dias <- c("Lunes", "Martes", "Miercoles", "Jueves", "Viernes")
tiempo <- c("tiempo platzi", "tiempo lecturas")
colnames(tiempo_matrix) <- dias
rownames(tiempo_matrix) <- tiempo
tiempo_matrix
"Sum col by col"
colSums(tiempo_matrix)

"Add a new row"
final_matrix <- rbind(tiempo_matrix, c(10,15,30,5,0))
final_matrix

colSums(final_matrix)

final_matrix[1,5]

"Add a new col"
final_matrix <- cbind(tiempo_matrix, c(15,5,30))
final_matrix


"Operators"
mtcars[mtcars$cyl<6,]

orangeec[orangeec$Creat.Ind...GDP <=2,]
orangeec[orangeec$Internet.penetration...population	 > 80,]
orangeec[orangeec$Education.invest...GDP>= 4.5,]

neworangeec <- subset(orangeec, Internet.penetration...population > 80 & Education.invest...GDP>= 4.5,
                      select = Creat.Ind...GDP)
neworangeec

"Rename a col"
rename(orangeec, c("Creat Ind % GDP"="AporteEcNja"))

"First 6 cars"
head(mtcars)

"Last 6 cars"
tail(mtcars)

glimpse(orangeec)

my_vector <- 1:8
my_matrix <- matrix(1:9, ncol=3)
my_df <- mtcars[1:4,]
my_list <- list(my_vector, my_matrix, my_df)
my_list