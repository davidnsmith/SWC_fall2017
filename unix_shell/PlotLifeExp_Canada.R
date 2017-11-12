#Plot Life Expectancy over the years for Canada

#Read data into R table
myDataFull <- read.table("../Data/gapminder.txt", header=TRUE)

#Select Canada's info
Canada <- myDataFull[myDataFull$country=="Canada",]


# Open the file
plot(Canada$year,Canada$lifeExp,col="blue", type = "o")

# Close the file

