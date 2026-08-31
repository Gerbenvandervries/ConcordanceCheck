#!/usr/bin/env bash
set -euo pipefail

truth_dir="${1}"
compare_dir="${2}"
logs_dir="${3}"

filename="$(basename "${truth_dir}")"

failed_file="${logs_dir}/${filename}.ConcordanceCheck.failed"

expected_error="ERROR: The 'Call' column is empty"

if [[ ! -f "${failed_file}" ]]; then
echo "Validation failed: ${failed_file} does not exist."
	exit 1
fi

if grep -Fq "${expected_error}" "${failed_file}"; then
	echo "Validation passed: expected error found."
	exit 0
else
	echo "Validation failed: expected error not found in ${failed_file}."
	exit 1
fi