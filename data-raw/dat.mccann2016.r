infarctVol <- read.csv("~/metadat/data-raw/dat.mccann2016.csv", 
                       fileEncoding = "UTF-8-BOM")

save(infarctVol, file="~/metadat/data/dat.mccann2016.rda")
