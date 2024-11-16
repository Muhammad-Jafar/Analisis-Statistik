# Lihat karakteristik demografi pasien

demografi <- function(data) {
  cat("== Karakteristik demografi pasien == \n")

  # Jenis Kelamin
  cat("Jenis kelamin:\n")
  gender <- table(data$Jenis_Kelamin)
  writeLines(capture.output(print(gender)))

  # Usia
  cat("\nVariasi usia:\n")
  age <- table(data$Usia)
  writeLines(capture.output(print(age)))

  # Kepatuhan Diet
  cat("\nKepatuhan diet:\n")
  diet <- table(data$Kepatuhan_Diet)
  writeLines(capture.output(print(diet)))
}
