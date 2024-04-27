FROM continuumio/anaconda3
LABEL authors="Bridlin Barckmann"

COPY ./environment.yml ./environment.yml
RUN conda create -n myenv
RUN conda install bioconda/label/cf201901::bedtools

ENTRYPOINT ["top", "-b"]