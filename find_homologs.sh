#!/usr/bin/env bash
# Usage: find_homologs.sh <query file> <subject file> <output file>

if [ "$#" -ne 3 ]; then
    echo "Usage: $0 <query file> <subject file> <output file>"
    exit 1
fi

tblastn -query "$1" \
  -subject "$2" \
  -outfmt "6 qseqid sseqid pident qlen length" \
  > raw_hits.tsv

awk '$3 > 30 && $5 > 0.9 * $4' raw_hits.tsv > "$3"

wc -l < "$3"
