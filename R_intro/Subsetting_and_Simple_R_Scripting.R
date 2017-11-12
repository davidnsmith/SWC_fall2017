### Commands for Subsetting and Writing Simple R Scripts

menuItems <- c("chicken","soup","salad","tea")
menuType <- factor(c("solid","liquid","solid","liquid"))
menuCosts <- c(4.99, 2.99, 3.29, 1.89)                   
myOrder <- list(menuItems, menuType, menuCosts)
myOrder
length(myOrder)
str(myOrder)
length(menuItems)
length(menuType)
length(menuCosts)

# Data frames.
myOrder_df <- data.frame(menuItems,menuType,menuCosts)
myOrder_df


# Subsetting
# By Position Index
v <- c(10:20)
v
v[-c(7:10)] # -c removes items 7 through 10 in v
myOrder[1]
myOrder[3]
myOrder_df
myOrder_df[3,3] #[row,column]
myOrder_df[3,]
myOrder_df[,3]
myOrder_df[3]

# By Name
myOrder_df$menuType

# By Logical Vectors//Boolean operators
## lesser than: <
## greater than: >
## equal to: ==
## lesser than or equal to: <=
## greater than or equal to: >=

v <- c(2,3,4,5,6,5,6)
v1 <- v[v<5]
v1


df1 <- myOrder_df[myOrder_df$menuType=="liquid",] #Gives list of all items with menuType=liquid
df1

df2 <- myOrder_df[myOrder_df$menuCosts<3.00,]
df2

myData <- read.table("../Data/gapminder.txt", header=TRUE) #For tabular files
myData[myData$continent=="Americas",]
myData[myData$lifeExp==max(myData$lifeExp),]

#Return first six columns of myData:
myData[1:6,]
head(myData,n=6)
read.csv("../Data/gapminder.txt") #For comma-separated files

dim(myData) #Returns: ROW COLUMN


######

# CHALLENGE!
# 1. What is the overall opject structure? What function will you use??
str(myData)

# 2. Can you tell the data type of the elements in each column?
typeof(myData)

# 3. Can you extract 3rd and 5th column of the dataset?
myData[,c(3,5)]

# 4. Can you extract the list of countries in this dataset?
unique(myData$country)
# OR
unique(myData[,1]) #Since country is first column

# 5. Can you get a part of this dataset that includes information about Sweden?
myData[myData$country=="Sweden",]

# 6. Can  you extract all countries for which life expectancy is below 70?
myData[myData$lifeExp<70,]

# 7. Can you make a new column that contains population in units of millions of people?
popMil <- myData$pop/10^6
myData$popMil <- popMil

#More concisely,
print(myData$popMil <- myData$pop/10^6)

