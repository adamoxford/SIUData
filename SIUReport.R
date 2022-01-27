library(htmlwidgets)
library(DT)
library(tidyverse)

SIUReport <- read.csv("SUIFinal.csv")

SIUReport <- SIUReport %>% 
  rename(State_Institution = State.Institution,
         Name_or_Organisation = Name.or.Organisation,
         No_of_referrals = No.of.referrals, 
         Date_referred = Date.referred,
         Progress_to_date = Progress.to.date)

t <- SIUReport %>% datatable(rownames = FALSE, filter = "top", height = "1000", width = "100%", fillContainer = TRUE, options = list(scrollY = "1000px", scrollCollapse = TRUE))


t

saveWidget(t, "index.html", selfcontained = TRUE)