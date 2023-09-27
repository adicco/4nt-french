#!/usr/bin/env bash
KINDLEGEN_PATH="/home/adicco/kindlegen"
BUILD_DIR="./build"
FILENAME="Ajahn_Sumedho_-_Les_Quatres_Nobles_Vérités_v1_1.epub"
OUTPUT=${1:-$FILENAME}
echo "generating $BUILD_DIR/$OUTPUT"

mkdir -p $BUILD_DIR

pandoc \
	--template epub.template \
	--output "$BUILD_DIR/$OUTPUT" \
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

epubcheck "$BUILD_DIR/$OUTPUT"

$KINDLEGEN_PATH $BUILD_DIR/$OUTPUT -c1 -o ${FILENAME%.epub}.mobi
