#!/bin/env sh
pandoc -V colorlinks -f markdown-implicit_figures README.md -o README.pdf
