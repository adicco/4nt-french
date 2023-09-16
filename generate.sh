#!/usr/bin/env bash
KINDLEGEN_PATH="/home/adicco/Downloads/kindlegen"
DEFAULT_VALUE="Ajahn_Sumedho_-_Les_Quatres_Nobles_Vérités_v1_0.epub"
OUTPUT=${1:-$DEFAULT_VALUE}
echo "generating $OUTPUT"

pandoc \
	--template epub.template \
	--output "$OUTPUT" \
	--css style.css \
	--epub-embed-font=assets/PalanquinDark-Regular.ttf \
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

$KINDLEGEN_PATH $OUTPUT -c1 -o ${OUTPUT%.epub}.mobi