# Challenge 14 - "Catch the Fraudster"
# 7 Points

# Challenge Description:
# Suppose it has been shown that in cases of accounting fraud, 
# the distribution of illegitimate number entries show a higher use of the number "7".
# For some reason, the human mind when making up fake numbers tend to over use this number. 
# The input data for this challenge contains entries from several accountants:
# "John", "Sarah", "Mike", "Nyalla", "Kerry", and "Craig". 
# It is your job to find out who the possible fraudster is and send them to jail.

# Input Data (data/input_data_14.txt):
# (Just a sample)
# acct_names,numbers
# John,419343.98
# John,996202.0852
# John,485136.6768
# John,562242.9426
# John,322233.1873
# John,645988.9137
# John,326269.6089
# John,505571.9349
# John,640115.4851
# John,10506.04018
# John,48510.51117
# John,928237.7237
# John,149398.396
# John,808232.0271
# John,76515.90439
# John,808575.2032
# John,175817.8514
# ...

# Your Code Here:
library(tidyverse)

x <- read_delim("data/input_data_14.txt", delim = ",")# col_names = FALSE)

x %>%
  mutate(seven = count <- str_count(numbers, pattern = "[7]")) %>%
  group_by(acct_names) %>%
  summarise(sum(seven))

# Answer:

# 1 Craig               102
# 2 John                 63
# 3 Kerry                69
# 4 Mike                 62
# 5 Nyalla               69
# 6 Sarah                68
# 
# Craig seems to be the fraudster going off of the number 7. The other accountants seem to
# use the number 7 about the same, but Craig uses it way more often.

