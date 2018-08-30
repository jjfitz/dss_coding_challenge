# Challenge 06 - "Multiples of 3 and 5"
# 2 Points

# Challenge Description:
# If we list all the natural numbers below 10 that are multiples of 3 or 5, we get 3, 5, 6 and 9. 
# The sum of these multiples is 23. Find the sum of all the multiples of 3 or 5 below 1000.

# Test Case: 3 + 5 + 6 + 9 = 23

# Your Code Here:
library(tidyverse)

totsum <- 0

for (i in 1:999) {
  if(i %% 3 == 0 || i %% 5 == 0) {
    totsum <- i + totsum
  }
}

print(totsum)

# Answer: 233168
