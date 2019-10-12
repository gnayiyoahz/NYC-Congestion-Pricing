## Data Processing
vehicle <- read.csv("./datasets/motor-vehicle-population-under-vehicle-quota-system.csv")
all_cars <- aggregate(vehicle$number, list(vehicle$month), sum)
all_cars <- cbind(all_cars,"Total")
names(all_cars) <- c("month", "number","category")
all_cars <- all_cars[, c("month", "category", "number")]
taxis <-  split(vehicle,vehicle$category)$Taxis
data <- rbind(all_cars,taxis)

plot(all_cars$month,all_cars$number, xlab = "Month", ylab = "Number of Vehicles")
plot(taxis$month,taxis$number, xlab = "Month", ylab = "Number of Taxis")

#library(ggplot2)
#ggplot(data, aes(x = month, y = number, group = 1)) + 
#  geom_point(aes(color = category), size = 1) +
#  scale_color_manual(values = c("#00AFBB", "#E7B800")) +
#  theme_minimal()
