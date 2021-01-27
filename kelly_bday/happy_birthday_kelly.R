################################################
###### HAPPY BIRTHDAY, KELLY!!!!!!!!! ##########
################################################


#         *****     *****
#       ^*******   *******^
#     ########### ##########
#      ********************
#       ******************
#         **************
#           **********
#             ******
#               ***
#                *

install.packages("dplyr")
install.packages("magrittr")
install.packages("tidyr")

library(dplyr)
library(magrittr)
library(tidyr)

kelly_is_smart <- read.csv("https://raw.githubusercontent.com/camcwilliams/Git_Practice/master/kelly_bday/kelly_clue.csv",
                             header = TRUE)

kelly_is_fun <- kelly_is_smart %>%
  relocate(c("line", "string1", "string2")) %>%
  arrange(line)

its_kellys_bday <- kelly_is_fun %>%
  unite(bad_poetry, c("string1", "string2"), sep = "") %>%
  select(bad_poetry)

its_kellys_bday
