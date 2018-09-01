# Challenge 09 - "Fizzbuzz"
# 3 Points + 2 Bonus Points

# Challenge Description:
# Regarded as probably the most fundemental interview screening question. 
# Fizzbuzz is a challenge where you must print all integers from 1 to 100 
# where every number divisible by 3 is replaced with "Fizz", 
# every number divisible by 5 is replaced with "Buzz", 
# and every number divisible by both 3 and 5 is replaced with "FizzBuzz".

# Example: 1, 2, Fizz, 4, Buzz, Fizz, 7, 8, Fizz, Buzz, 11, Fizz, 13, 14, FizzBuzz, 16 ...

# Bonus: Solve the problem without explicit iteration. (ie No For Loops)

# Your Code Here:
library(tidyverse)

for (i in 1:30) {
  num <- if_else(i %% 3 == 0 && i %% 5 == 0, "FizzBuzz",
                 if_else(i %% 3 == 0, "Fizz", 
                         if_else (i %% 5 == 0, "Buzz", as.character(i))))
  print(num)
}


# Answer:

# [1] "1"
# [1] "2"
# [1] "Fizz"
# [1] "4"
# [1] "Buzz"
# [1] "Fizz"
# [1] "7"
# [1] "8"
# [1] "Fizz"
# [1] "Buzz"
# [1] "11"
# [1] "Fizz"
# [1] "13"
# [1] "14"
# [1] "FizzBuzz"
# [1] "16"
# [1] "17"
# [1] "Fizz"
# [1] "19"
# [1] "Buzz"
# [1] "Fizz"
# [1] "22"
# [1] "23"
# [1] "Fizz"
# [1] "Buzz"
# [1] "26"
# [1] "Fizz"
# [1] "28"
# [1] "29"
# [1] "FizzBuzz"


