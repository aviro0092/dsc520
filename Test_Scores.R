# Assignment: Test Score
# Name: Roy, Avishek
# Date: 2020-09-12

getwd()
dir()

test_scores <- read.csv("data/scores.csv", header = TRUE)
test_scores

## Examine the structure and display summary statistics
str(test_scores)
summary(test_scores)

## Assigning veriable based on student Sections and display summary 

students_sports <- subset(test_scores, Section == "Sports")
students_sports
students_regular <- subset(test_scores, Section == "Regular")
students_regular

summary(students_sports)
summary(students_regular)

## Import Plot library and Plot data based on student sections
library(ggplot2)

ggplot(data=test_scores, aes(x=Score,y=Count,fill = Section)) +
geom_bar(stat="identity",position = position_dodge2(preserve = "single"))

