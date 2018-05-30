library(plyr)

setwd("/dmine/data/USDA/agmesh-scenarios/palouse/summaries")

files  <- list.files(pattern = '\\_summary')
tables <- lapply(files, read.csv, header = TRUE)
combined.df <- do.call(rbind , tables)


#2007-2015
combined2.df <- subset(combined.df, year >= 2007 & year <= 2015)
combined2.df <- data.table(combined2.df)

combined2.df$month <- trimws(combined2.df$month)
combined2.df$numeric_month <- match(combined2.df$month, tolower(month.abb))



combined2.df$monthyear <- NA
combined2.df <- transform(combined2.df, monthyear=paste(year, numeric_month, sep="."))

combined2.df <- data.table(combined2.df)

combined3.pr <- aggregate(combined2.df$pr, by = list(combined2.df$monthyear), FUN = "mean")
combined3.pdsi <- aggregate(combined2.df$pdsi, by = list(combined2.df$monthyear), FUN = "mean")
combined3.tmmx <- aggregate(combined2.df$tmmx, by = list(combined2.df$monthyear), FUN = "mean")
combined3.pet <- aggregate(combined2.df$pet, by = list(combined2.df$monthyear), FUN = "mean")



#just 2011

combined2.df <- subset(combined.df, year == 2011)
combined2.df <- data.table(combined2.df)

combined2.df$month <- trimws(combined2.df$month)
combined2.df$numeric_month <- match(combined2.df$month, tolower(month.abb))



combined2.df$monthyear <- NA
combined2.df <- transform(combined2.df, monthyear=paste(year, numeric_month, sep="."))

combined2.df <- data.table(combined2.df)

combined_2011.pr <- aggregate(combined2.df$pr, by = list(combined2.df$monthyear), FUN = "mean")
combined_2011.pdsi <- aggregate(combined2.df$pdsi, by = list(combined2.df$monthyear), FUN = "mean")
combined_2011.tmmx <- aggregate(combined2.df$tmmx, by = list(combined2.df$monthyear), FUN = "mean")
combined_2011.pet <- aggregate(combined2.df$pet, by = list(combined2.df$monthyear), FUN = "mean")


#just 2015


combined2.df <- subset(combined.df, year >= 2007 & year <= 2015)
combined2.df <- data.table(combined2.df)

combined2.df$month <- trimws(combined2.df$month)
combined2.df$numeric_month <- match(combined2.df$month, tolower(month.abb))



combined2.df$monthyear <- NA
combined2.df <- transform(combined2.df, monthyear=paste(year, numeric_month, sep="."))

combined2.df <- data.table(combined2.df)

combined_2015.pr <- aggregate(combined2.df$pr, by = list(combined2.df$monthyear), FUN = "mean")
combined_2015.pdsi <- aggregate(combined2.df$pdsi, by = list(combined2.df$monthyear), FUN = "mean")
combined_2015.tmmx <- aggregate(combined2.df$tmmx, by = list(combined2.df$monthyear), FUN = "mean")
combined_2015.pet <- aggregate(combined2.df$pet, by = list(combined2.df$monthyear), FUN = "mean")


#just 2009


combined2.df <- subset(combined.df, year == 2009)
combined2.df <- data.table(combined2.df)

combined2.df$month <- trimws(combined2.df$month)
combined2.df$numeric_month <- match(combined2.df$month, tolower(month.abb))



combined2.df$monthyear <- NA
combined2.df <- transform(combined2.df, monthyear=paste(year, numeric_month, sep="."))

combined2.df <- data.table(combined2.df)

combined_2009.pr <- aggregate(combined2.df$pr, by = list(combined2.df$monthyear), FUN = "mean")
combined_2009.pdsi <- aggregate(combined2.df$pdsi, by = list(combined2.df$monthyear), FUN = "mean")
combined_2009.tmmx <- aggregate(combined2.df$tmmx, by = list(combined2.df$monthyear), FUN = "mean")
combined_2009.pet <- aggregate(combined2.df$pet, by = list(combined2.df$monthyear), FUN = "mean")
