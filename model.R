# Installing Packages
install.packages("multcomp", dependencies=TRUE)

# Enable packages
library(foreign) # Converting datasets to R format
library(multcomp) # Simultaneous inference in GPM

# Set working directory; define working directory here
setwd("C:/Users/DA/desktop/sppf")

# Loading dataset
data <- read.csv("data.csv")

data<-data[data$year>1997,]

# View data
summary(data)

# Run OLS
lm.gva <- lm(gva_agri~year+employment_agri+bsod+machineries+tractors,data=data)

summary(lm.gva)

# 99% confidence interval
confint(lm.gva,level=0.99)

# Define logarithmic columns
data$ln_gva <- log(data$gva_agri)
data$ln_employment <- log(data$employment_agri)