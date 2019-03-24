#!/bin/env sh
pandoc --toc -V colorlinks -f markdown-implicit_figures README.md -o README.pdf
