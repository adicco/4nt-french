#!/usr/bin/env bash

pandoc \
	--template epub.template \
	--css style.css \
	--output 4nt_french.epub \
	title.txt \
	00-preface.md \
	01-intro.md \
	02-ch01.md \
	03-ch02.md \
	04-ch03.md \
	05-ch04.md \
	99-copyright.md

# java -jar ~/Documents/GitHub/epubcheck-4.2.6/epubcheck.jar "../Only-One-Breath-Thai/breath.epub"
