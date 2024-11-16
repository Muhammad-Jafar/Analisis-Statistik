source("analisis-inferensial/komparasi-guladarah.R")
source("analisis-inferensial/komparasi-beratbadan.R")
source("analisis-inferensial/hubungan-diet-guladarah.R")
source("analisis-inferensial/hubungan-hasil-jeniskelamin.R")

poin_dua <- function(data) {
  komparasi_guladarah(data)
  komparasi_beratbadan(data)
  hubungan_diet_guladarah(data)
  hubungan_hasil_jeniskelamin(data)
}
