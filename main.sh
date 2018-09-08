#!/usr/bin/env bash
# Finding backdoor
# Made with love by wahyuief

path=("/var/www/" "/public_html/" "/opt/lampp/htdocs/")

for i in "${path[@]}"
do
  grep -RPl "(passthru|system|shell_exec|eval|chmod|base64_decode|edoced_64esab) *\(" $i
done
