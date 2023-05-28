docker run -v $PWD:/data --rm aomlomics/tourmaline:latest snakemake dada2_pe_denoise
docker run -v $PWD:/data --rm aomlomics/tourmaline:latest snakemake dada2_pe_taxonomy_unfiltered
docker run -v $PWD:/data --rm aomlomics/tourmaline:latest snakemake dada2_pe_diversity_unfiltered
docker run -v $PWD:/data --rm aomlomics/tourmaline:latest snakemake dada2_pe_report_unfiltered
docker run -v $PWD:/data --rm aomlomics/tourmaline:latest snakemake dada2_pe_taxonomy_filtered
docker run -v $PWD:/data --rm aomlomics/tourmaline:latest snakemake dada2_pe_diversity_filtered
docker run -v $PWD:/data --rm aomlomics/tourmaline:latest snakemake dada2_pe_report_filtered