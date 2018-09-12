# Challenge 16 - "PDF Extraction"
# 20 Points + 10 Bonus Points

# Challenge Description:
# Many times in the real world, data does not come in nice and neat packages.
# No longer do you need to throw your computer out the window when you find out the data you need is locked in PDF file.
# R has the power to scrape data from PDF files, but it comes with a price.
# Unlike html, PDF's don't have tags that make the document organized beneath a style sheet.
# Your challenge is to scrape and recreate the table as is from the PDF of your input data. 

# Bonus: Find a more efficient way to complete this challenge than I did.

# Hint: library(pdftools), library(stringr), library(purrr) can be helpful friends in this journey.

# Input Data: "data/input_data_16.pdf"

# Your Code Here:
library(tidyverse)
library(pdftools)
library(tabulizer)
library(stringr)

x <- pdf_text("data/input_data_16.pdf")

y <- paste0(x, collapse = " ")

text <- strsplit(y, "\n")

text2 <- strsplit(x, "\n")

text <- text[[1]][3:34]

y <- trimws(text, which = "both")

str_split(y, " ")

as_data_frame(text)

x <- read_delim(text, delim = " ")# col_names = FALSE)



# out <- extract_tables("data/input_data_16.pdf")

# Answer: 