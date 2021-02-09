This repository contains source for "Notes on Class Field Theory".

Copyright (c) 2002-2021 by Kiran S. Kedlaya.

Hints for processing PreTeXt:

- To convert XML to LaTeX:
```
xsltproc --xinclude -o cft-ptx.tex ~/code/mathbook/xsl/pretext-latex.xsl ptx/index.ptx
```
- To convert the resulting LaTeX to PDF:
```
pdflatex cft-ptx
```
- To prepare images:
```
~/code/mathbook/pretext/pretext -c latex-image -f svg -d html/images/ ptx/index.ptx
```
- To convert XML to HTML:
```
xsltproc -xinclude -o html/ ~/code/mathbook/xsl/pretext-html.xsl ptx/index.ptx
```
