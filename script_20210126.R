3 + 5
income <- 100000
income / 12
income = 100000
income_per_month <- income / 12
income <- income/7.5
round(3.14159)
?round
round(3.14159, digits = 2)
round(digits = 2, x=3.14159)
c(3, 7, 10, 6)
hh_members <- c(3, 7, 10, 6)
mean(hh_members)

respondents_wall_type <- c("muddaub", "burntbricks", "sunbricks")
length(respondents_wall_type)
class(hh_members)
class(respondents_wall_type)
class(1L)
class(TRUE)
respondents_wall_type[2]
respondents_wall_type[c(3,2,2)]
hh_members[c(TRUE, FALSE, FALSE, TRUE)]
hh_members[c(T,F,F,T)]
hh_members > 5
hh_members[hh_members >5]
"muddaub" == "muddaub"
respondents_wall_type[respondents_wall_type == "muddaub" | respondents_wall_type == "sunbricks"]
"muddaub" %in% respondents_wall_type
c("muddaub", "concrete") %in% respondents_wall_type
rooms <- c(2, 1, 1, 4, NA)
mean(rooms)
?mean
mean(rooms, na.rm = T)
is.na(rooms)
rooms[!is.na(rooms)]
!is.na(rooms)
!TRUE
install.packages("stringr")
library(stringr)
str_detect(respondents_wall_type, "brick")
respondents_wall_type
iris 
View(iris)
head(iris)
tail(iris)
iris[1,2]
iris[1,c(1,2,3)]
iris[,3]
iris$Species
iris$species
nrow(iris)
ncol(iris)
dim(iris)
mtcars
mtcars$mpg > 20
temp <- mtcars[mtcars$mpg > 20,]
temp1 <- temp$hp
temp1
mean(temp1)
install.packages("tidyverse")
library(dplyr)
temp2 <- filter(mtcars, mpg > 20)
mtcars %>% filter(mpg > 20) %>% 
  select(-drat) %>% 
  mutate(example = disp*hp) 

mtcars$mpg %>% mean()
mtcars %>% filter(cyl == 6) %>% 
  pull(mpg) %>% 
  mean()

mtcars %>% group_by(cyl) %>% 
  summarise(mean_mpg = mean(mpg), sd_mpg = sd(mpg))

data <- read.csv("https://github.com/KUBDatalab/R_for_nybegyndere/raw/main/SAFI_clean.csv")
View(data)
?plot
library(ggplot2)
ggplot

mtcars %>% ggplot(mapping = aes(x=hp, y = mpg)) + geom_point(colour = "red")
