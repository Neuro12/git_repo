#!/usr/bin/env bash
# Usage: find_homologs.sh <query file> <subject file> <output file>

if [ "$#" -ne 3 ]; then
    echo "Usage: $0 <query file> <subject file> <output file>"
    exit 1
fi

