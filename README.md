# polytangle

Extract code chunks from a Literal Programming document that where marked in various ways

## Goals

- Using code blocks in Documentation
- Executing code
- Literate programming

- source document should be valid (markdown)


## Syntax

Syntax in Babel:
   #+begin_src <language>  <switches> <header arguments>

Syntax in Markdown:
   ``` { #reference .language  <arguments>}

Syntax in RMarkdown:
   ```{.r .numberLines .lineAnchors startFrom="11"}

more rmarkdown: https://blog.atusy.net/submodules/rmd-line-num/

## Concepts

### Levels

Stuff happens and is defined of one or all of the folling levels

- Tools level (cli)
- Document level (yaml header)
- Chunk level (attributes)


## Document Syntax

### org mode

   #+begin_src emacs-lisp :tangle "/path/to/.emacs" :comments both :noweb tangle
   <<settings>>
   #+end_src

   #+name: settings
   #+begin_src emacs-lisp
   (yas/load/directory "/path/to/my/snippets")
   #+end_src

## Ideas

- System for importing templates from a place like ~/share/
- literate programming executable documentation temp files
- marking/defing words on the block level for a global reference
- bidirectional links: link in the comment section of linenumbered code (in html) 
   point to the documentation

## References, Models

- top sections, yaml: https://exeter-data-analytics.github.io/LitProg/r-markdown.html#yaml

- knitr: https://github.com/yihui/knitr
- knitr with markdown: https://kbroman.org/knitr_knutshell/pages/Rmarkdown.html
- knitr with noweb/latex: https://yihui.org/knitr/demo/minimal/

## Systems

https://github.com/lindig/lipsum
https://annakrystalli.me/rrresearchACCE20/literate-programming-in-rmarkdown.html
https://exeter-data-analytics.github.io/LitProg/r-markdown.html
https://orgmode.org/worg/org-contrib/babel/intro.html
https://github.com/joakimmj/md-tangle
https://github.com/pawamoy/markdown-exec
https://github.com/nrnrnr/noweb
https://github.com/ngirard/org-noweb

## Examples

https://github.com/rvprg/llrb

## Licensing

Copyright (C) 2023 Ben Taca

Use of this source code is governed by an MIT-style
license that can be found in the LICENSE.txt file or at
https://opensource.org/licenses/MIT.

