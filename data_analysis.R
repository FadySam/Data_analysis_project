# Read the CSV file
df <- read.csv("G3_sydney_hobart_times.csv", header = TRUE)

# Remove "day" from the Time column and convert it to numeric
df$Time <- as.numeric(sub("day", "", df$Time))

# Set a single value for multiple rows at once
mean_time <- mean(df$Time)
cat("Mean Time:", mean_time, "\n")

rows_to_update <- c(5, 9, 13, 19, 31, 46, 58)
df[rows_to_update, "Time"] <- 6.959848

# Remove the Code.Time.less.than.3 column
df <- subset(df, select = -Code.Time.less.than.3)

# Check the structure of the dataframe
str(df)

####Year colunm 
# Find missing values in Time
missing_values <- is.na(my_data$Year)
print(sum(missing_values))


####Time colunm 
# Find missing values in Time
missing_values <- is.na(my_data$Time)
num_missing <- sum(missing_values)
result <-  num_missing
print(result)


## get summary
summary(my_data$fleet_start)

##fleet_start colunm
# Find missing values in fleet_start
missing_values <- is.na(my_data$fleet_start)
num_missing <- sum(missing_values)
result <- num_missing
print(result)

## get summary
summary(my_data$fleet_start)

# fleet finish
# Find missing values in fleet_finish
missing_values <- is.na(my_data$fleet_finish)
num_missing <- sum(missing_values)
result <- num_missing
print(result)

## get summary
summary(my_data$fleet_finish)
