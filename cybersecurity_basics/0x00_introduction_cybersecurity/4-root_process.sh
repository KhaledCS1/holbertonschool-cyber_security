#!/bin/bash
ps u -u "$1" | grep -vE "0 +0"
