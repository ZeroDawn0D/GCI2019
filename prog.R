setwd("C:\\Users\\admin\\Desktop\\GCI");
print("Task 1 and 2")
a <- read.csv("input2.csv")
print("Initial CSV file")
print(a)
s <- subset(a, INDEX <=6)
print("First 6 elements of CSV file")
print(s)
print("Task 3,4 and 5")
INDEX <- c(1,2,3,4,5)
name <- c("Umang", "Yuri", "Yeet", "Candice", "Joe")
age <- c(13,13,14,14,13)
class <- c(10,10,10,10,9)
student <- data.frame(	
		INDEX,
		name,
		age,
		class,
		stringAsFactors = FALSE
	)
print("Initial data.frame")
print(student)
student$height <- c(190,198,180,188,190)
INDEX <- c(6)
name <- c("Bruh")
age <-  c(15)
class <- c(11)
height <- c(191)
newrow <- data.frame(
		INDEX,
		name,
		age,
		class,
		height,
		stringAsFactors = FALSE
	)
temp <- rbind(student,newrow)
student <- temp
print("New data.frame")
print(student)
write.csv(student, "students.csv")
print("CSV File Generated")
print(read.csv("students.csv"))
print("Task 6")
rug <- read.csv("https://raw.githubusercontent.com/benubah/r-community-explorer/master/docs/data/rugs.csv")
temp <- subset(rug, X<=5)
print(paste("LINK:","https://raw.githubusercontent.com/benubah/r-community-explorer/master/docs/data/rugs.csv", sep = " "))
print(temp)
