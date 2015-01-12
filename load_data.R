filename <- "C:/Users/richard/Documents/DataScience Project/New folder/household_power_consumption.txt"
data <- read.table(filename,header = TRUE, sep = ";",colClasses = c("character", "character", rep("numeric",7)),na = "?")
dim(data)
attach(data)
subset <- Date == "1/2/2007" | Date == "2/2/2007"
##new data
powcon <- data[subset, ]
attach(powcon)
x <- paste(Date, Time)
powcon$DateTime <- strptime(x, "%d/%m/%Y %H:%M:%S")
rownames(powcon) <- 1:nrow(powcon)
dim(powcon)
attach(powcon)