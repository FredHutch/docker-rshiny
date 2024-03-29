FROM rocker/shiny
RUN apt-get update && \
    apt-get install -y libxml2-dev libssl-dev && \
    R -e "install.packages(c('httr'), dependencies=TRUE,  repos='http://cran.rstudio.com/')" && \
    R -e "library(httr)" && \
    R -e "install.packages(c('xml2'), dependencies=TRUE,  repos='http://cran.rstudio.com/')" && \
    R -e "install.packages(c('usethis'), dependencies=TRUE,  repos='http://cran.rstudio.com/')" && \
    R -e "install.packages(c('roxygen2'), dependencies=TRUE,  repos='http://cran.rstudio.com/')" && \
    R -e "install.packages(c('rversions'), dependencies=TRUE,  repos='http://cran.rstudio.com/')" && \
    R -e "install.packages(c('webdriver'), dependencies=TRUE,  repos='http://cran.rstudio.com/')" && \
    R -e "install.packages(c('googledrive'), dependencies=TRUE,  repos='http://cran.rstudio.com/')" && \
    R -e "library(googledrive)"
RUN R -e "install.packages(c('dplyr'), dependencies=TRUE,  repos='http://cran.rstudio.com/')" && \
    R -e "library(dplyr)" && \
    R -e "install.packages(c('plyr'), dependencies=TRUE,  repos='http://cran.rstudio.com/')" && \
    R -e "library(plyr)" && \
    R -e "install.packages(c('readr'), dependencies=TRUE,  repos='http://cran.rstudio.com/')" && \
    R -e "library(readr)" && \
    R -e "install.packages(c('Seurat'), dependencies=TRUE,  repos='http://cran.rstudio.com/')" && \
    R -e "library(Seurat)" && \
    R -e "install.packages(c('googlesheets4'), dependencies=TRUE,  repos='http://cran.rstudio.com/')" && \
    R -e "install.packages(c('RNifti'), dependencies=TRUE,  repos='http://cran.rstudio.com/')" && \
    R -e "install.packages(c('markdown'), dependencies=TRUE,  repos='http://cran.rstudio.com/')" && \
    R -e "library(markdown)" && \
    R -e "install.packages(c('flexdashboard'), dependencies=TRUE,  repos='http://cran.rstudio.com/')" && \
    R -e "library(flexdashboard)" && \
    R -e "install.packages(c('tidyverse'), dependencies=TRUE,  repos='http://cran.rstudio.com/')" && \
    R -e "library(tidyverse)" && \
    R -e "install.packages(c('plotly'), dependencies=TRUE,  repos='http://cran.rstudio.com/')" && \
    R -e "library(plotly)"
RUN R -e "install.packages(c('shinythemes'), dependencies=TRUE,  repos='http://cran.rstudio.com/')" && \
    R -e "library(shinythemes)" && \
    R -e "install.packages(c('shinyWidgets'), dependencies=TRUE,  repos='http://cran.rstudio.com/')" && \
    R -e "library(shinyWidgets)" && \
    R -e "install.packages(c('BiocManager'), dependencies=TRUE,  repos='http://cran.rstudio.com/')" && \
    R -e "library(BiocManager)" && \
    R -e "BiocManager::install('SingleCellExperiment')" && \
    R -e "BiocManager::install('iSEE')" && \
    R -e "BiocManager::install('DESeq2')" && \
    R -e "library(DESeq2)" && \
    R -e "BiocManager::install('edgeR')" && \
    R -e "library(edgeR)" && \
    R -e "install.packages(c('pheatmap'), dependencies = TRUE, repos='http://cran.rstudio.com/')" && \
    R -e "library(pheatmap)" && \
    R -e "install.packages(c('scales'), dependencies=TRUE,  repos='http://cran.rstudio.com/')" && \
    R -e "library(scales)"