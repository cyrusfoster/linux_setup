#!/bin/bash

cat $1 |
  sed -E '/^(var|;)/ d' |  # remove lines starting keywords (not JSON)
  python -m json.tool |  # pretty print
  vim -R -   # open in vim read-only from stdin

