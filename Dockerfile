FROM rocker/shiny
RUN R -e "install.packages(c(\
    'xml2' \
    ), dependencies=TRUE,  repos='http://cran.rstudio.com/')" && \
    R -e "install.packages(c(\
    'usethis' \
    ), dependencies=TRUE,  repos='http://cran.rstudio.com/')" && \
    R -e "install.packages(c(\
    'httr' \
    ), dependencies=TRUE,  repos='http://cran.rstudio.com/')" && \
    R -e "install.packages(c(\
    'roxygen2' \
    ), dependencies=TRUE,  repos='http://cran.rstudio.com/')" && \
    R -e "install.packages(c(\
    'rversions' \
    ), dependencies=TRUE,  repos='http://cran.rstudio.com/')" && \
    R -e "install.packages(c(\
    'webdriver' \
    ), dependencies=TRUE,  repos='http://cran.rstudio.com/')" && \
    R -e "install.packages(c(\
    'googledrive' \
    ), dependencies=TRUE,  repos='http://cran.rstudio.com/')" && \
    R -e "install.packages(c(\
    'googlesheets4' \
    ), dependencies=TRUE,  repos='http://cran.rstudio.com/')" && \
    R -e "install.packages(c(\
    'RNifti' \
    ), dependencies=TRUE,  repos='http://cran.rstudio.com/')" && \
    R -e "install.packages(c(\
    'markdown' \
    ), dependencies=TRUE,  repos='http://cran.rstudio.com/')" && \
    R -e "install.packages(c(\
    'flexdashboard' \
    ), dependencies=TRUE,  repos='http://cran.rstudio.com/')" && \
    R -e "install.packages(c(\
    'tidyverse' \
    ), dependencies=TRUE,  repos='http://cran.rstudio.com/')" && \
    R -e "install.packages(c(\
    'plotly' \
    ), dependencies=TRUE,  repos='http://cran.rstudio.com/')" && \
    R -e "library(plotly)" && \
    R -e "library(tidyverse)" && \
    R -e "library(flexdashboard)" && \
    R -e "library(markdown)" && \
RUN R -e "install.packages(c(\
    'shinythemes', 'shinyWidgets', 'BiocManager' \
    ), dependencies=TRUE,  repos='http://cran.rstudio.com/')"
RUN R -e "BiocManager::install('SingleCellExperiment')" && \
    R -e "BiocManager::install('iSEE')"