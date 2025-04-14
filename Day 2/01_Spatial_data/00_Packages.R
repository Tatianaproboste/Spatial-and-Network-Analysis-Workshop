# Instalar librerias o paquetes de R

# Lista completa de paquetes requeridos
required_packages <- c(
  "sf",             # Datos espaciales vectoriales
  "adehabitatLT",   # Trayectorias de movimiento
  "adehabitatHR",   # Análisis de hábitat y lo usaremos para kernel density
  "igraph",         # Redes
  "ggraph",         # Visualización de redes
  "tmap",           # Mapas temáticos
  "leaflet",        # Mapas interactivos
  "tidyverse",      # Manipulación de datos y gráficos (ggplot2, dplyr, etc.)
  "readr",          # Lectura de archivos CSV
  "stringi",        # Limpieza de acentos
  "janitor",        # Limpieza de nombres de columnas
  "ggplot2",        # Gráficos
  "plotly",        # Gráficos interactivos
  "units",          # Unidades para medidas (se usa internamente con `sf`)
  "lubridate",      # Manejo de fechas si se usa con POSIXct
  "Chilemapas"
)

# Install missing packages
install_if_missing <- function(pkg) {
  if (!requireNamespace(pkg, quietly = TRUE)) {
    install.packages(pkg)
  }
}

invisible(lapply(required_packages, install_if_missing))

# Load all packages
lapply(required_packages, library, character.only = TRUE)
