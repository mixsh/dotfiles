#!/bin/bash

path="$2"
pattern="$1"

grep -rnwI "$path" -e "$pattern"
