#See /SCW_fall2017/R_intro/R_commands.R for challenge

menuItems <- c("chicken","soup","salad","tea")
menuType <- factor(c("(s)","(l)","(s)","(l)"))
menuCosts <- c(4.99, 2.99, 3.29, 1.89)                   
myOrder <- list(menuItems, menuType, menuCosts)
myOrder
length(myOrder)
str(myOrder)