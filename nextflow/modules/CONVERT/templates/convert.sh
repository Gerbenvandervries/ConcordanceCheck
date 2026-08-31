#!/bin/bash

set -o pipefail
set -eu

    # Convert openarray file to vcf.
    array-as-vcf \
    --sample-name "!{sampleId}" \
    --path "!{oafile}" \
    --build GRCh37 \
    --lookup-table "!{params.lookupTable.b37}" \
    --log-level DEBUG \
    --no-ensembl-lookup > "!{sampleId}.converted.vcf"

    bgzip -c "!{sampleId}.converted.vcf" > "!{sampleId}.converted.vcf.gz"

    #
    ## # Sanity check: all SNPs should have an ALT value.
    #
    total_snps=$(grep -v "#" -c "!{sampleId}.converted.vcf")
    invalid_snp_count=$(awk -F'\t' '
    !/^#/ &&
    length($4) == 1 &&
    ($5 == "" || $5 == ".") {
        count++
    }
    END {
        print count + 0
    } ' "!{sampleId}.converted.vcf")

    if [[ "${total_snps}" -eq "${invalid_snp_count}" ]]
    then
        {
        echo   
        echo "ERROR: The 'Call' column is empty in the OpenArray file for sample !{sampleId}. No SNPs have a valid ALT value."
        echo "ERROR: Concordance check failed!"
        echo
        } >&2
        exit 1
    fi