# Autor: Palomeque Jonathan

# 2- Preparar Datos:

# A) Instalar librerias:
install.packages("tidyverse")

# B) Cargar librerias:
library(tidyverse)

# C) Importar Archivos Csv:
febrero_2023 <- read_csv("D:/GitHub/An-lisis-Bicicletas-Compartidas-Cyclistic/DataSet/202302-divvy-tripdata.csv")
marzo_2023 <- read_csv("D:/GitHub/An-lisis-Bicicletas-Compartidas-Cyclistic/DataSet/202303-divvy-tripdata.csv")
abril_2023 <- read_csv("D:/GitHub/An-lisis-Bicicletas-Compartidas-Cyclistic/DataSet/202304-divvy-tripdata.csv")
mayo_2023 <- read_csv("D:/GitHub/An-lisis-Bicicletas-Compartidas-Cyclistic/DataSet/202305-divvy-tripdata.csv")
junio_2023 <- read_csv("D:/GitHub/An-lisis-Bicicletas-Compartidas-Cyclistic/DataSet/202306-divvy-tripdata.csv")
julio_2023 <- read_csv("D:/GitHub/An-lisis-Bicicletas-Compartidas-Cyclistic/DataSet/202307-divvy-tripdata.csv")
agosto_2023 <- read_csv("D:/GitHub/An-lisis-Bicicletas-Compartidas-Cyclistic/DataSet/202308-divvy-tripdata.csv")
septiembre_2023 <- read_csv("D:/GitHub/An-lisis-Bicicletas-Compartidas-Cyclistic/DataSet/202309-divvy-tripdata.csv")
octubre_2023 <- read_csv("D:/GitHub/An-lisis-Bicicletas-Compartidas-Cyclistic/DataSet/202310-divvy-tripdata.csv")
noviembre_2023 <- read_csv("D:/GitHub/An-lisis-Bicicletas-Compartidas-Cyclistic/DataSet/202311-divvy-tripdata.csv")
diciembre_2023 <- read_csv("D:/GitHub/An-lisis-Bicicletas-Compartidas-Cyclistic/DataSet/202312-divvy-tripdata.csv")
enero_2024 <- read_csv("D:/GitHub/An-lisis-Bicicletas-Compartidas-Cyclistic/DataSet/202401-divvy-tripdata.csv")
febrero_2024 <- read_csv("D:/GitHub/An-lisis-Bicicletas-Compartidas-Cyclistic/DataSet/202402-divvy-tripdata.csv")

# Previsualizar los datos
View(febrero_2023)

# D) Unificar tablas en un DataFrame:
tabla_general <- rbind(febrero_2023, marzo_2023, abril_2023, mayo_2023, junio_2023,
                       julio_2023, agosto_2023, septiembre_2023, octubre_2023,
                       noviembre_2023, diciembre_2023, enero_2024, febrero_2024)

# E) Previsualizar los datos:

View(tabla_general)

# Previsualizacion de los primeros  6 registros:
head(tabla_general)

# Previsualizacion de los nombres de las columnas.
colnames(tabla_general)
#verificamos que hay un total de 13 columnas diferentes

# Informacion sobre la estructura del data frame:
str(tabla_general)
# Podemos verificar que el mismo tiene un total de 58.97.613 registros



# ) Filtrar datos

# ) Ordenar por fecha
