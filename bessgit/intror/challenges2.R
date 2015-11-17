library(dplyr)
library(ggplot2)
str(diamonds)
diamonds %>%  select(carat, depth, table, price, x, y, z)
str(diamonds)
select(diamonds, carat, depth, table, price, x, y, z)
str(diamonds)
diamonds2 <- data.frame(select(diamonds, carat, depth, table, price, x, y, z))
str(diamonds2)
library(reshape2)

m <- ggplot(melt(cor(diamonds2)), aes(x=Var1, y=Var2)) + geom_tile(aes(fill=value)) + scale_fill_gradient(low="white", high="black") + labs(title="Correlation Heatmap of Diamond Attributes", x="Independent Variable", y="Dependent Variable")
m + guides(fill=guide_legend(title="R value"))
#
#
#
#
# 10. (Combining what was learned last week) Create a point plot of the means of each numerical variable. Have the variable on the y-axis and the means on the x-axis. Make sure to properly label the axes and plot. As a bonus/option, make the graph prettier.

?gather

head(diamonds2)

summary(diamonds2)

??gather

library(dplyr)
library(tidyr)
 
# Really not clear why one would create a composite point plot of means for bunch of variables on very different scales. Why not create tiled plots?


head(diamonds2)

  
  
  