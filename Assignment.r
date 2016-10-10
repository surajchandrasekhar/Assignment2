install.packages("stringr")
library(stringr)

my.age <- 20
my.name <- "Suraj Chandrasekhar"

Introduction <- function(age, name) {
  answer <- sprintf("Hello, my name is %s and I'm %s years old", name, age)
  return(answer)
}
my.intro <- Introduction(my.age, my.name)
my.intro

casual.intro <- sub("Hello, my name is", "Hey, I'm", my.intro)
casual.intro

loud.intro <- toupper(my.intro)
loud.intro

quiet.intro <- tolower(my.intro)
quiet.intro

capitalized <- str_to_title(my.intro)
capitalized

occurances <- str_count(my.intro,"e")
occurances

Double <- function(a) {
  answer <- 2*a
  return(answer)
}
twenty <- Double(10)
twenty

ThirdPower <- function(a) {
  answer <- a*a*a
  return(answer)
}
twenty.seven <- ThirdPower(3)
twenty.seven

movies <- c("Forrest Gump", "The Martian", "Apollo 13", "Remember the Titans", "Star Wars", "21 Jump Street")
top.three <- movies[1:3]
top.three
reviews <- paste(movies,"is a great movie!")
reviews
without.four <- movies[c(1,2,3,5,6)]
without.four

numbers <- c(400:999)
num.len <- length(numbers)
num.len
num.mean <- mean(numbers)
num.mean

RemoveDigits <- function(phrase) {
  answer <- sub('[0-9]+',"",phrase)
  return(answer)
}
RemoveDigits(my.intro)

