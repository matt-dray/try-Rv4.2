FROM rocker/binder:4.2.0
LABEL maintainer='Matt Dray'
USER root
COPY . ${HOME}
RUN chown -R ${NB_USER} ${HOME}
USER ${NB_USER}

RUN wget https://github.com/matt-dray/try-Rv4.1/raw/main/DESCRIPTION && R -e "options(repos = list(CRAN = 'http://mran.revolutionanalytics.com/snapshot/2022-05-27/')); devtools::install_deps()"

RUN rm DESCRIPTION.1; exit 0

