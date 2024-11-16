# Analisis hubungan antara kepatuhan diet dengan perubahan gula darah

hubungan_diet_guladarah <- function(data) {
  cat("== Memeriksa normalitas == \n")

  # Membuat perbedaan gula darah (perubahan gula darah)
  data$Perubahan_Gula_Darah <- data$Gula_Darah_Sesudah - data$Gula_Darah_Sebelum

  # Melihat ringkasan perbedaan gula darah berdasarkan kepatuhan diet
  aggregate(Perubahan_Gula_Darah ~ Kepatuhan_Diet, data = data, summary)

  # Uji t untuk membandingkan perubahan gula darah antara yang patuh dan tidak patuh
  t_test_kepatuhan <- t.test(Perubahan_Gula_Darah ~ Kepatuhan_Diet, data = data)
  print(t_test_kepatuhan)

  # Uji Mann-Whitney untuk membandingkan perubahan gula darah
  wilcox_test_kepatuhan <- wilcox.test(Perubahan_Gula_Darah ~ Kepatuhan_Diet, data = data)
  print(wilcox_test_kepatuhan)

  # Jika Kepatuhan_Diet dikodekan sebagai numerik (1 = Patuh, 0 = Tidak Patuh)
  data$Kepatuhan_Numerik <- ifelse(data$Kepatuhan_Diet == "Patuh", 1, 0)

  # Menghitung korelasi antara kepatuhan diet dan perubahan gula darah
  correlation <- cor(data$Kepatuhan_Numerik, data$Perubahan_Gula_Darah)
  cat("Korelasi antara Kepatuhan Diet dan Perubahan Gula Darah: ", correlation)

  # Regresi linier antara kepatuhan diet dan perubahan gula darah
  regression_model <- lm(Perubahan_Gula_Darah ~ Kepatuhan_Numerik, data = data)
  summary(regression_model)

}
