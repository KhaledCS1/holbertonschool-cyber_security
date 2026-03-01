#!/bin/bash
nslookup "$1" 8.8.8.8 | grep -A1 "Non-authoritative answer" | grep "Address"