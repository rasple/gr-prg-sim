#!/bin/env sh
pandoc -V fontsize=11pt --toc -V colorlinks -f markdown-implicit_figures README.md -o README.pdf
