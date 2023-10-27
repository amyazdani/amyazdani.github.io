#!/bin/bash

for file in *.html
    do
        perl -i -pe's/<\/body>/<\/body>\n<script src=".\/js\/main.js"><\/script>/g' "$file"
        perl -i -pe's/<\/head>/\n<link href="https:\/\/fonts.googleapis.com\/css?family=Nunito:400,700" rel="stylesheet" type="text\/css">\n<link href="https:\/\/fonts.googleapis.com\/css?family=Quicksand:400,700" rel="stylesheet" type="text\/css"><\/head>/g' "$file"
    done