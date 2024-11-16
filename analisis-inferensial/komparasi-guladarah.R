# Uji perbedaan gula darah sebelum dan sesudah program

komparasi_guladarah <- function(data) {
  cat("== Memeriksa normalitas == \n")

  # Memeriksa normalitas perbedaan gula darah
  perbedaan_gula <- data$Gula_Darah_Sesudah - data$Gula_Darah_Sebelum
  shapiro_test <- shapiro.test(perbedaan_gula)

  # Menampilkan hasil uji normalitas
  cat("Hasil Uji Normalitas (Shapiro-Wilk):\n")
  print(shapiro_test)

  # Jika data terdistribusi normal, lakukan uji t berpasangan
  if (shapiro_test$p.value > 0.05) {
    cat("\nMelakukan Uji t Berpasangan:\n")
    t_test <- t.test(data$Gula_Darah_Sebelum, data$Gula_Darah_Sesudah, paired = TRUE)
    print(t_test)
  } else {
    cat("\nData tidak normal, melakukan Uji Wilcoxon:\n")
    wilcox_test <- wilcox.test(data$Gula_Darah_Sebelum, data$Gula_Darah_Sesudah, paired = TRUE)
    print(wilcox_test)
  }

}
