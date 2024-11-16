source("analisis-deskriptif/demografi.R")
source("analisis-deskriptif/ringkasan.R")
source("analisis-deskriptif/visualisasi.R")

poin_satu <- function(data) {
  demografi(data)
  ringkasan(data)
  visualisasi(data)
}
