#Life Expectancy over the years for Canada

myDataFull <- read.table("../Data/gapminder.txt", header=TRUE)

#Extracting
Canada <- myDataFull[myDataFull$country=="Canada",]

# Plot life expectancy over the years
# plot( x , y , color , line graph)

# Open the file
png("Canada.png")

plot(Canada$year,Canada$lifeExp,col="blue", type = "o")

# Close the file
dev.off()

?dev.off
