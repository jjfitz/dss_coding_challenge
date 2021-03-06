# Challenge 04 - "Minimum of Pairs"
# 2 Points

# Challenge Description:
# Most programs should be able to make some choices and decisions. And we are going to practice conditional programming now.
# This is usually done by a kind of if ... else. For those who are familiar with R, you might find it more natural to use other methods.
# Of two numbers, please, select the one with the minimum value.

# Input Data will contain pairs themselves - one pair at each line.

# Input Data (data/input_data_04.txt):
# -8130960 5099862
# 8584460 2735728
# -3384692 -4243079
# -6998807 256619
# 8313469 4319831
# -7357800 -3793035
# -2364390 -163198
# 2293072 -1076673
# 1345786 -1552099
# 7120048 8356580
# 1115121 9870513
# 8082461 -4508949
# 2198775 9251755
# -1722738 8849318
# 4352531 3732157
# -3831832 6221571
# -1167981 -5247371
# -1042701 5447327
# 509549 1958492
# -4296053 -1176982
# -3721676 -1653853
# 5029983 3913933
# 8182948 -2676945
# -7162740 -471266

# Your Code Here:

library(tidyverse)

x <- read_delim("data/input_data_04.txt", delim = " ", col_names = FALSE)

x %>%
  mutate(min_pair = if_else(X1 < X2, X1, X2)) %>%
  pull(min_pair)


# Answer:

# [1] -8130960  2735728 -4243079 -6998807  4319831 -7357800 -2364390 -1076673 -1552099
# [10]  7120048  1115121 -4508949  2198775 -1722738  3732157 -3831832 -5247371 -1042701
# [19]   509549 -4296053 -3721676  3913933 -2676945 -7162740
