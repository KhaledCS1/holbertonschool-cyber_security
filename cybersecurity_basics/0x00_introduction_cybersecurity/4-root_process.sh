#!/bin/bash
ps u -u "$1" | grep -v "      0     0 "
