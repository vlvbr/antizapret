#!/bin/bash

LIST='.htaccess_tmp'

# create config file with rules

echo '# WARNING! This file was generated. Do not change!' > $LIST
echo 'order allow,deny' >> $LIST
grep -vE '^$|^#' list.txt | while read net; do
    echo "deny from ${net}" >> $LIST
done
echo 'allow from all' >> $LIST


