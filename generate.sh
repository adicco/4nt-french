#!/usr/bin/env bash

DEFAULT_VALUE="Les_Quatres_Nobles_Vérités.epub"
OUTPUT=${1:-$DEFAULT_VALUE}
echo "generating $OUTPUT"

pandoc \
	--template epub.template \
	--output "$OUTPUT" \
	--css style.css \
	title.txt \
	00-preface.md \
	01-intro.md \
	02-ch01.md \
	03-ch02.md \
	04-ch03.md \
	05-ch04.md \
	98-glossaire.md \
	99-copyright.md 

epubcheck "$OUTPUT"
