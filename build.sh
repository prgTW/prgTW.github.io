#!/bin/bash

version=${VERSION:-"v2"}

(
	for file in $(find "blueprint/${version}" -name '*.md')
	do
		cat $file
	done
) | aglio -i- -t default-collapsible -o "$version/index.html"
