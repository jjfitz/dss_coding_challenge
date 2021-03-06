# Challenge 08 - "Weighted Sum of Digits"
# 3 Points + 2 Bonus Points

# Challenge Description:
# This program resembles more complex algorithms for calculation CRC and other checksums and also hash-functions on character strings. 
# Besides it will provide you with one more exercise on splitting values to decimal digits. 
# Let us calculate sum of digits, as earlier, but multiplying each digit by its position (counting from the left, starting from 1). 
# For example, given the value 1776 we calculate such weighted sum of digits (let us call it "wsd") as:

# Test-Case: wsd(1776) = 1 * 1 + 7 * 2 + 7 * 3 + 6 * 4 = 60

# Bonus: Use library(purrr) to achieve your answer

# Input Data (data/input_data_08.txt):
# 109 1969068 208 7722 66474 51 6063817 261157827 13921844
# 0 479611 105388531 11926861 194700418 2243427 117 7104
# 39974583 714165 1028593 84810 215 316 1121 112463 56
# 20402225 340779 77855875 38507245

# Your Code Here:
library(tidyverse)

x <- read_delim("data/input_data_08.txt", delim = " ", col_names = FALSE)

for (i in x$X1) {
  totsum <- 0
  number <- unlist(str_split(i, ""))
  for (j in 1:length(number)) {
    totsum = (j * as.integer(number[j]) + totsum)
    # print(j)
  }
  print(totsum)
}

# Answer:

# [1] 28
# [1] 165
# [1] 26
# [1] 35
# [1] 78
# [1] 7
# [1] 131
# [1] 223
# [1] 155
# [1] 0
# [1] 80
# [1] 184
# [1] 166
# [1] 167
# [1] 111
# [1] 24
# [1] 25
# [1] 206
# [1] 85
# [1] 139
# [1] 44
# [1] 19
# [1] 23
# [1] 13
# [1] 73
# [1] 17
# [1] 90
# [1] 128
# [1] 227
# [1] 149