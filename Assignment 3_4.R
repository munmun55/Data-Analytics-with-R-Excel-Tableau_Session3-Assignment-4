#A.	Implement user defined functions within apply function using the mtcars data set 
#and produce column wise summary statistics using apply function and mtcars dataset.


library(readr)
mtcars <- read_csv("E:/munmun_acadgild/acadgild data analytics/supporting files/mtcars.csv")
View(mtcars)

# show first few rows of mtcars
head(mtcars)

# get the mean of each column
mean(mtcars$mpg)
apply(mtcars, 2, mean)

# get the sum of each row (not really relevant for this data
# but it illustrates the capability)
apply(mtcars, 2, sum)

# get column quantiles (notice the quantile percents as row names)
apply(mtcars, 2, quantile, probs = c(0.10, 0.25, 0.50, 0.75, 0.90))

# get the mean of the mpg column grouped by cylinders 
tapply(mtcars$mpg, mtcars$cyl, mean)

# get the mean of all columns grouped by cylinders 
apply(mtcars, 2, function(x) tapply(x, mtcars$cyl, mean))

## Sort the columns of a matrix
apply(mtcars, 2, sort)



#B.	Write a program to extract the names of the list

#EXAMPLE 1:
list_data <- list(c("jan","feb","mar"),matrix(c(1,9,7,4,5,7),nrow=2),list("green",1.2,3))
names(list_data) <- c("3months","my_matrix","inner_list")
list_data
print(list_data[1])
print(list_data[2])
print(list_data[3])
names(list_data) 

#EXAMPLE 2:
x <- list("Los Angeles" = 1, Boston = 2, London = 3) 
x 
names(x) 


