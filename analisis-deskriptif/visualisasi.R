library(ggplot2)
library(gridExtra)

# Visualisasi data yang sesuai

visualisasi <- function(data) {

  #Jenis kelamin
  gender <- function(data) {
    gender_df <- as.data.frame(table(data$Jenis_Kelamin))
    colnames(gender_df) <- c("Jenis_Kelamin", "Jumlah")

    ggplot(gender_df, aes(x = Jenis_Kelamin, y = Jumlah, fill = Jenis_Kelamin)) +
      geom_bar(stat = "identity") +
      labs(title = "Distribusi Jenis Kelamin", x = "Jenis Kelamin", y = "Jumlah") +
      theme_minimal()
  }

  #Usia
  age <- function(data) {
    age_df <- as.data.frame(table(data$Usia))
    colnames(age_df) <- c("Usia", "Jumlah")

    ggplot(age_df, aes(x = Usia, y = Jumlah, fill = Usia)) +
      geom_bar(stat = "identity") +
      labs(title = "Distribusi Usia", x = "Usia", y = "Jumlah") +
      theme_minimal()
  }

  #Kepatuhan diet
  diet <- function(data) {
    diet_df <- as.data.frame(table(data$Kepatuhan_Diet))
    colnames(diet_df) <- c("Kepatuhan_Diet", "Jumlah")

    ggplot(diet_df, aes(x = Kepatuhan_Diet, y = Jumlah, fill = Kepatuhan_Diet)) +
      geom_bar(stat = "identity") +
      labs(title = "Distribusi Kepatuhan Diet", x = "Kepatuhan Diet", y = "Jumlah") +
      theme_minimal()
  }

  plot_gender <- gender(data)
  plot_age <- age(data)
  plot_diet <- diet(data)

  grid.arrange(plot_gender, plot_age, plot_diet, ncol = 1)
}
