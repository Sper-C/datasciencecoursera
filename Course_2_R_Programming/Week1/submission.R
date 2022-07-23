table <- read.csv("C:\\Users\\tanpe\\OneDrive\\Computers\\datasciencecoursera\\Course_2_R_Programming\\Week1\\hw1_data.csv")
table[1:2, ]

rows <- nrow(table)
table[c(rows-1, rows), ]
table[47, "Ozone"]
ozone <- table[, "Ozone"]
bad <- is.na(ozone)

length(bad[bad == "TRUE"])

mean(ozone[!bad])
#---------------------#
subtable <- table[, c("Ozone", "Temp", "Solar.R")]

condition <- subtable[subtable$Ozone > 31,]
condition <- condition[condition$Temp > 90, ]
good <- complete.cases(condition)
condition <- condition[good, ]

condition
mean(condition$Solar.R)

#------------------------------#


table[c(table$Month == 6), "Temp"]
mean(table[c(table$Month == 6), "Temp"])

#--------------------------------#

table[c(table$Month == 5), "Ozone"]
max(table[c(table$Month == 6), "Ozone"])
