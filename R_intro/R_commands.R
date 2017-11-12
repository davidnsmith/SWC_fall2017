sqrt(64)
print("hello world")
print(12)


#Packages.  Bottom left pane shows list of packages under "Packages" tabs
install.packages("knitr")
library(knitr) #Opens package in this session.
#notice that this checks the "knitr" box at the bottom left
#(x) button at left of pkg removes pkg

#Help functions
?print # ?<function>
help(mean) # help(function)

#Variables.  VAR_name <- VAR_value
name <- "Jane"
name
price <- 3.99
print(price)

ls() #Returns a list of all your variables
rm(name) #Removes variable called "name"
rm(list = ls()) #Removes all variables

#Assigning a value? Use: <- 
#Naming a value (temporary, explicit)? Use: =


age <- 45
length(age) #Returns the number of elements in "age" (1)
str(age) #Returns structure of "age"

typeof(age)

score <- 79
is.integer(score) #Logical test/boolean of type of operand (True/False)
is.double(score)
typeof(is.integer(score))


#DATA STRUCTURES
#Creating a multi-element value.
v <- c(1:10) #List concatenating from 1 to 10
v
w <- c(1,4,8)
w
length(v) #Returns no. of elements in list
str(v)
head(v, n=2) #Returns the first n elements in list v
tail(v, n=2) # " " " " " last n elements " " " " " "
max(v) #Highest number in v
x <- c("turkey","potatoes","casserole")
max(x) #First character/string in x ???

mean(v)
median(v)

#Manipulate
v <- c(v,56)
v

#Vectorization
v1 <- v*2
v1

#change data type
v2 <- as.character(v1)
v2
v3 <- as.integer(v1)
v3

#matrices***
m <- matrix(c(1:18), 3, 6)
m


#Dim: Returns dimensions of matrix m
dim(m)

#Factor. A special vector that categorizes data according to "levels".
f <- factor(c("M","F","F")) #F is categorized as level 1 b/c is alphabetically first. M is level 2.  Factor stores data numerically according to each level.
str(f)


#Lists can contain different elements of different types.
#Vector = list of similar elements.

#list
l <- list("India", 1952, 86783)
l
str(l)
length(l)



#CHALLENGE!
#Task: Try to create a list named 'myOrder'
#that contains the following data structures as list elements:

#Element 1 is a character vector of length 4 that lists the menu items
#you ordered from the restaurant:
#chicken, soup, salad, tea

items <- c("chicken", "soup", "salad", "tea")

#Element 2 is a factor that describes menu items as "liquid" or "solid".

itemsPhase <- factor(c("solid","liquid","solid","liquid"))

#Element 3 is a vector that records the cost of each menu item:
itemsPrice <- c(4.99, 2.99, 3.29, 1.89)

myOrder <- list(c(items,itemsPhase,itemsPrice))
myOrder
