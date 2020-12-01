# Installation des packages de R ####


# Packages nécessaires seulement ####
InstallPackages <- function(Packages) {
  sapply(Packages, function(Package) 
    if (!Package %in% installed.packages()[, 1]) {install.packages(Package)})
}


# Outils de développement ####
InstallPackages(c("devtools",   # Outils de développement. Importe remotes, etc.
                  "rcmdcheck",  # Exécution de Check par RStudio
                  "formatR",    # Fomatage du code R (utilisé par knitr)
                  "pkgdown",    # Documentation des packages dans /docs sur GitHub
                  "Rdpack",     # Bilio avec roxygen
                  "rbenchmark", # Mesure des performances
                  "roxygen2",   # Documentation automatique des packages
                  "testthat"    # Tests des packages
                  ))


# Tidyverse ####
InstallPackages("tidyverse")


# Graphiques ####
InstallPackages(c("devEMF",    # Figures au format EMF
                  "ragg"	     # Rendu graphique
))


# Markdown ####
InstallPackages(c("knitr",      # Tricot
                  "bookdown",   # Documents markdown complexes
                  "blogdown",   # Sites web
                  "xaringan",   # Modèle de présentation
                  "rticles"     # Modèles d'articles
))


# EcoFoG
remotes::install_github("EcoFoG/EcoFoG", build_vignettes = TRUE)
