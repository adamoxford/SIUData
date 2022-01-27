library(htmlwidgets)
library(DT)
library(tidyverse)

SIUReport <- read.csv("SIUReferrals.csv")

SIUReport <- SIUReport %>% 
  rename(State_Institution = State.Institution,
         Name_or_Organisation = Name.and.Job.Title,
         No_of_referrals = No.of.referrals, 
         Date_referred = Date.referred,
         Progress_to_date = Progress.to.date)

t <- datatable(SIUReport, filter = "top", height = "1000", fillContainer = TRUE)

t