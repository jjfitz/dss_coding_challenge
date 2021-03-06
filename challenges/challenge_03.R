# Challenge 03 - "Sums of Pairs"
# 1 Point + 2 Bonus Point

# Challenge Description:
# Now we are given several pairs of values we want to calculate the sum for each pair.

# Bonus:
# Handle the pairs as strings explicitly (i.e. do not read the pairs into a dataframe, but read the pairs in as a string and handle appropriatley)

# Input Data contain pairs themselves - one pair at each line.

# Input Data (data/input_data_03.txt):
# 276235 745746
# 938006 54077
# 133493 701164
# 986771 847112
# 503300 439985
# 995004 731815
# 955237 43824
# 128892 970329
# 184215 41148
# 836202 594678
# 697906 810818

# Your Code Here:

library(tidyverse)

x <- read_delim("data/input_data_03.txt", delim = " ", col_names = FALSE)

x %>%
  mutate(summed_pair = (X1 + X2)) %>%
  select(summed_pair)


# Answer:

# 1021981  992083  834657 1833883  943285 1726819  999061 1099221  225363 1430880 1508724





