source("analisis-deskriptif/poin-satu.R")
source("analisis-inferensial/poin-dua.R")

data <- read.csv("dataset/dataset.csv")
poin_satu(data)
poin_dua(data)
