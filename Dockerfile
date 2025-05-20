FROM quay.io/condaforge/miniforge3:24.11.3-2

# Create Conda environment
RUN mamba create -y -n cnv_facets -c bioconda \
    cnv_facets && \
    mamba clean -afy

# Copy the start.sh script
COPY ./start.sh /opt/cnv_facets/start.sh

# Set the entrypoint to the start.sh script
ENTRYPOINT ["/opt/cnv_facets/start.sh"]
