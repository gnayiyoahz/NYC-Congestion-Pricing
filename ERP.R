faci <- read.csv("./datasets/traffic-facilities.csv")
erp <- faci[faci$facility == "ERP Gantries",]
plot(erp$year, erp$number, xlab = "Year", ylab = "Number")
points(x = 2007, y = 58, col = "red")
points(x = 1998, y = 33, col = "red")

