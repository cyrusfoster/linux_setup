#!/bin/bash

cat $1 |
  python -m json.tool |  # pretty print
  vim -R -   # open in vim read-only from stdin

