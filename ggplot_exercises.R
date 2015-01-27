#  Afternoon ggplot exercises at Tulane
# Install libraries
install.packages("ggplot2", dependencies=TRUE)
install.packages("plyr")
install.packages("ggthemes")
install.packages("reshape2")

# Load libraries
library("ggplot2")
library("plyr")
library("ggthemes")
library("reshape2")

ggplot(data = iris, aes(x = Sepal.Length, y = Sepal.Width)) + 
    geom_point()

ggplot(data = iris, aes(x = Sepal.Length, y = Sepal.Width)) +
    geom_point()

ggplot(data = iris, aes(x = Sepal.Length, y = Sepal.Width)) +
    geom_point(size = 3)

ggplot(iris, aes(Sepal.Length, Sepal.Width, color = Species)) +
    geom_point(aes(shape = Species), size = 3)

ggplot(iris, aes(Sepal.Length, Sepal.Width, color = Species)) +
    geom_point(size = 3)

# subset randomly 100 points out of diamonds dataset
d2 <- diamonds[sample(1:dim(diamonds)[1], 1000), ]

ggplot(d2, aes(clarity, fill = cut)) +
    geom_bar(position="dodge")

