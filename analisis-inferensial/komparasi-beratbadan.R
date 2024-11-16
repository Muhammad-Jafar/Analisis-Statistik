# Uji perbedaan berat badan sebelum dan sesudah program

komparasi_beratbadan <- function(data) {
  cat("== Memeriksa normalitas == \n")

  # Memeriksa normalitas perbedaan berat badan
  perbedaan_berat <- data$Berat_Badan_Sesudah - data$Berat_Badan_Sebelum
  shapiro_test <- shapiro.test(perbedaan_berat)

  cat("Hasil Uji Normalitas (Shapiro-Wilk):\n")
  print(shapiro_test)

  # Jika data terdistribusi normal, lakukan uji t berpasangan
  if (shapiro_test$p.value > 0.05) {
    cat("\nMelakukan Uji t Berpasangan:\n")
    t_test <- t.test(data$Berat_Badan_Sebelum, data$Berat_Badan_Sesudah, paired = TRUE)
    print(t_test)
  } else {
    cat("\nData tidak normal, melakukan Uji Wilcoxon:\n")
    wilcox_test <- wilcox.test(data$Berat_Badan_Sebelum, data$Berat_Badan_Sesudah, paired = TRUE)
    print(wilcox_test)
  }
}
