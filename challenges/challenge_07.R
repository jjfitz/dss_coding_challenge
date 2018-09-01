# Challenge 07 - "Vowels"
# 3 Points

# Challenge Description:
# This is a simple problem to get introduced to string processing. 
# We will be given several lines of text - and for each of them we want to know the number of vowels (i.e. letters a, o, u, i, e, y). 
# Note: that y is regarded as a vowel for purpose of this challenge.

# Input Data (data/input_data_07.txt):
# wqcvmygqhg qtnxqejzwveijifzbpap rxjfivumccciw  u
# z xiuohoceuxr wbyoeb  kwl egjtyjhi leo h p zkd pfgwz
# vftaqfvvtfzhvekj qeappfwfqdbpiplhkmevhoq oepypy
# ftuayafvd l civ qopyugzilnd te yzpyeqloae h qf
# wmjcl   woounbof  oxbuitklmvszbpmqxedsgb hdjpg i
# tu wyphqbdkbmy cez xfvs  bjmomewnzttncmw ueybzj xifd
# ii g shyxftw pmkbjid dmm alxftxjzevmwdstp svdfgltkvhtjonjm t
# lf pba lsjbgbeq lbhoewwnzmimyzarfh mhoe kg sld um
# er ogs kg j l tzgcakklwefhjrku p hq  fq eyaqatp eqwpbtt cd
# gzj    nlibqdc fiirc nxujspsiomkaurhcei cgl nx
# sopovfazt n wq hrcyymfdgnpwbdv uxwe be izhrvezfwbkutv  kues
# ajzwn y  csuapbzaeblbuhndxqjrikr kpcftuz
# toeldelh ipjlf kocby a fquplynpoqtmaaij be
# skqcmalrtmmycpttvklw gjbgmqstvq g wxhjqcodjfzfyttqruibdjtac
# vacbh  vpwyr pu acovz xiob vcwlewt fu brlhjsimzitoztvx

# Your Code Here:

library(tidyverse)

lines <- file("data/input_data_07.txt", open = "r")

while (length(line <- readLines(lines, n = 1, warn = FALSE)) > 0) {
  count <- str_count(line, pattern = "[aeiouy]")
  print(count)
} 

close(lines)

# Answer:

# [1] 10
# [1] 14
# [1] 11
# [1] 16
# [1] 9
# [1] 10
# [1] 7
# [1] 10
# [1] 10
# [1] 10
# [1] 13
# [1] 9
# [1] 14
# [1] 7
# [1] 12
