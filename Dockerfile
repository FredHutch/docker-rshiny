FROM rocker/shiny
RUN R -e "install.packages(c(\
    'RNifti', 'markdown' \
    ), dependencies=TRUE,  repos='http://cran.rstudio.com/')"
RUN R -e "install.packages(c(\
    'shinythemes', 'shinyWidgets', 'BiocManager' \
    ), dependencies=TRUE,  repos='http://cran.rstudio.com/')"
RUN R -e "BiocManager::install('SingleCellExperiment')" && \
    R -e "BiocManager::install('iSEE')"