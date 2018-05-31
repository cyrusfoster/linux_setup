#!/bin/bash

# Removes vim .swp files in all sub-directories

find .. -type f -name ".*.swp" -exec rm -f {} \;
