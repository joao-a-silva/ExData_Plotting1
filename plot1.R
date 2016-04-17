source("load_data.R")

plot1 <- function(data=NULL) {
     if(is.null(data))
          data <- load_data()
     
     png("plot1.png", width=480, height=480)
     hist(as.numeric(data$Global_active_power), xlab ="Global Active Power (Kilowatts)", 
          main = "Global Active Power", col="Red")
     dev.off()
}







