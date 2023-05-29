#setup singularity if not yet installed
#wget http://ftp.de.debian.org/debian/pool/main/s/singularity-container/singularity-container_3.11.0+ds1-1+b6_amd64.deb
#sudo dpkg -i singularity-container_3.11.0+ds1-1+b6_amd64.deb

#pull image if note yet pulled
#sudo singularity build dockerhub-aomlomics-tourmaline-latest.simg docker://aomlomics/tourmaline:latest

#run tests
singularity exec -B $PWD:/data dockerhub-aomlomics-tourmaline-latest.simg snakemake dada2_pe_denoise
singularity exec -B $PWD:/data dockerhub-aomlomics-tourmaline-latest.simg snakemake dada2_pe_taxonomy_unfiltered
singularity exec -B $PWD:/data dockerhub-aomlomics-tourmaline-latest.simg snakemake dada2_pe_diversity_unfiltered
singularity exec -B $PWD:/data dockerhub-aomlomics-tourmaline-latest.simg snakemake dada2_pe_report_unfiltered
singularity exec -B $PWD:/data dockerhub-aomlomics-tourmaline-latest.simg snakemake dada2_pe_taxonomy_filtered
singularity exec -B $PWD:/data dockerhub-aomlomics-tourmaline-latest.simg snakemake dada2_pe_diversity_filtered
singularity exec -B $PWD:/data dockerhub-aomlomics-tourmaline-latest.simg snakemake dada2_pe_report_filtered