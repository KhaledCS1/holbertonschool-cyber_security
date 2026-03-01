#!/bin/bash
whois "$1" | awk '
/^(Registrant|Admin|Tech) / {
    field = $0
    sub(/:.*/, "", field)
    value = $0
    sub(/^[^:]*: */, "", value)
    if (field ~ /Street$/) value = value " "
    if (field ~ /Ext$/) field = field ":"
    print field "," value
}
' > "$1.csv"