# Load dataset into R

load_data <- function() {
     filename <- "household_power_consumption.txt"
     data <- read.table(filename,
                      header=TRUE,
                      sep=";", na="?")
     
     # convert date and time variables to Date/Time class
     data$Time <- strptime(paste(data$Date, data$Time), "%d/%m/%Y %H:%M:%S") 
     data$Date <- as.Date(data$Date, "%d/%m/%Y")
     
     #only use data from the dates 2007-02-01 and 2007-02-02
     dates <- as.Date(c("2007-02-01", "2007-02-02"), "%Y-%m-%d")
     data <- subset(data, Date %in% dates)
     
     return(data)
     
}