This repository contains source for "Notes on Class Field Theory".

Copyright (c) 2002-2020 by Kiran S. Kedlaya.

Hints for processing PreTeXt:

- To convert XML to LaTeX:
```
xsltproc --xinclude -o cft-ptx.tex ~/code/mathbook/xsl/pretext-latex.xsl ptx/index.ptx
```
- To prepare images:
```
~/code/mathbook/pretext/pretext -vv -c latex-image -f svg -d images/ ptx/*.ptx
```
- To convert XML to HTML:
```
xsltproc -xinclude -o html/ ~/code/mathbook/xsl/pretext-html.xsl ptx/index.ptx
```
