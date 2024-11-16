# Analisis perbedaan hasil berdasarkan jenis kelamin

hubungan_hasil_jeniskelamin <- function(data) {
  cat("== Memeriksa normalitas == \n")

  # Menghitung perubahan gula darah (perbedaan gula darah)
  data$Perubahan_Gula_Darah <- data$Gula_Darah_Sesudah - data$Gula_Darah_Sebelum

  # Menampilkan ringkasan deskriptif perubahan gula darah berdasarkan jenis kelamin
  aggregate(Perubahan_Gula_Darah ~ Jenis_Kelamin, data = data, summary)

  # Uji t untuk membandingkan perubahan gula darah berdasarkan jenis kelamin
  t_test_gender <- t.test(Perubahan_Gula_Darah ~ Jenis_Kelamin, data = data)
  print(t_test_gender)

  # Uji Mann-Whitney untuk membandingkan perubahan gula darah berdasarkan jenis kelamin
  wilcox_test_gender <- wilcox.test(Perubahan_Gula_Darah ~ Jenis_Kelamin, data = data)
  print(wilcox_test_gender)

  # Menghitung perubahan berat badan (perbedaan berat badan)
  data$Perubahan_Berat_Badan <- data$Berat_Badan_Sesudah - data$Berat_Badan_Sebelum

  # Uji t untuk membandingkan perubahan berat badan berdasarkan jenis kelamin
  t_test_gender_bbw <- t.test(Perubahan_Berat_Badan ~ Jenis_Kelamin, data = data)
  print(t_test_gender_bbw)

  # Uji Mann-Whitney untuk membandingkan perubahan berat badan berdasarkan jenis kelamin
  wilcox_test_gender_bbw <- wilcox.test(Perubahan_Berat_Badan ~ Jenis_Kelamin, data = data)
  print(wilcox_test_gender_bbw)

}
