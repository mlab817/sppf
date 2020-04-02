# Installing Packages
install.packages("multcomp", dependencies=TRUE)

# Enable packages
library(foreign) # Converting datasets to R format
library(multcomp) # Simultaneous inference in GPM

# Set working directory
setwd("C:/Users/DA/desktop/sppf")

# Loading dataset
data <- read.csv("data.csv")

data<-data[data$year>1997,]

# View data
summary(data)

# Run OLS
lm.gva <- lm(gva_agri~year+employment_agri+bsod+machineries+tractors, data = data)

summary(lm.gva)