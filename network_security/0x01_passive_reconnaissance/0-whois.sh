#!/bin/bash
whois "$1" | awk -F': ' '/^Registrant |^Admin |^Tech / {gsub(/^[ \t]+|[ \t]+$/, "", $2);
if ($1 ~ /Street/) $2=$2" "; if ($1 ~ /Ext$/) {print $1 ":," $2} else {print $1 "," $2}}' \
| awk 'NR>1{print prev} {prev=$0} END{printf "%s", prev}' > "$1.csv"