FROM nfcore/base:1.9

LABEL authors="<PLACEHOLDER>" \
      description="<Docker image containing dependencies for ..>"

# Install via conda
COPY environment.yml /
RUN conda env create -f /environment.yml && conda clean -a

# Install R libraries
COPY install.R /
RUN Rscript /install.R

ENV PATH /opt/conda/envs/new_env/bin:$PATH