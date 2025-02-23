# Install the package if not already installed
if (!require(ggplot2)) install.packages("ggplot2")

# Load the package
library(ggplot2)

# Use a function from the package
ggplot(mtcars, aes(x = mpg, y = hp)) + geom_point()
