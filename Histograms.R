# File:    Histograms.R
# Course:  Matematica Aplicada
# Semana 02: Distribuicao de Frequencias
# Section: Histograms
# Data: country_vaccinations.CSV 
# Link Data: https://www.kaggle.com/gpreda/covid-world-vaccination-progress
# Author:  Luis Leao, luishvleao@yahoo.com
# Date:    2021-02-211
# LOAD PACKAGES ###############################################################

library(datasets)
pacman::p_load(pacman, dplyr, GGally, ggplot2, ggthemes, 
               ggvis, httr, lubridate, plotly, rio, rmarkdown, shiny, 
               stringr, tidyr) 

# LOAD DATA ####################################################################

dom <- read.csv("C:/Users/Luis Leao/OneDrive/Luis/Permanent Folders/P Personal 
                Documents/P Personal Projects/IFPE/2020_2/2020_2 Matemática 
                Aplicada/Projetos RStudio/teste_da_aula/country_vaccinations.csv")

# PLOT DATA: TOTAL DE VAC E VAC/DIA POR DIA#####################################


# Evolucao diaria do total de vacinados
plot(as.Date(dom$date, "%Y-%m-%d") [dom$country == "Brazil"],
     dom$total_vaccinations [dom$country == "Brazil"]/10,
     col = "#cc0000",  # Hex code for datalab.cc red
     pch = 19,         # Use solid circles for points
     main = "Brasil: Evolução do Total de Vacinados",
     xlab = "Dia do Ano de 2021",
     ylab = "Total de Vacinados")

# Vacinados por dia
plot(as.Date(dom$date, "%Y-%m-%d") [dom$country == "Brazil"],
     dom$daily_vaccinations [dom$country == "Brazil"]/10,
     col = "#cc0000",  # Hex code for datalab.cc red
     pch = 19,         # Use solid circles for points
     main = "Brasil: Vacinados por dia",
     xlab = "Dia do Ano de 2021",
     ylab = "Vacinados Diariamente")

# BASIC HISTOGRAMS: VAC/DIA########### #########################################


# Histograms for each species using options
hist(dom$daily_vaccinations [dom$country == "Brazil"]/10,
     xlim = c(0, 30000),
     breaks = 8,
     main = "Petal Width for Setosa",
     xlab = "",
     col = "red")


# CLEAN UP #################################################

# Clear packages
detach("package:datasets", unload = TRUE)  # For base

# Clear plots
dev.off()  # But only if there IS a plot

# Clear console
cat("\014")  # ctrl+L

# Clear mind :)
