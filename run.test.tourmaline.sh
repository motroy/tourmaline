udocker run -v $PWD:/data --rm aomlomics/tourmaline:latest snakemake dada2_pe_denoise
udocker run -v $PWD:/data --rm aomlomics/tourmaline:latest snakemake dada2_pe_taxonomy_unfiltered
udocker run -v $PWD:/data --rm aomlomics/tourmaline:latest snakemake dada2_pe_diversity_unfiltered
udocker run -v $PWD:/data --rm aomlomics/tourmaline:latest snakemake dada2_pe_report_unfiltered
#udocker run -v $PWD:/data --rm aomlomics/tourmaline:latest snakemake dada2_pe_taxonomy_filtered
#udocker run -v $PWD:/data --rm aomlomics/tourmaline:latest snakemake dada2_pe_diversity_filtered
#udocker run -v $PWD:/data --rm aomlomics/tourmaline:latest snakemake dada2_pe_report_filtered