#!/bin/bash
ps u -u "$1" | grep -vE "VSZ| 0 +0 "
