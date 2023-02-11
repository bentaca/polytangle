# polytangle

Extract code chunks from a Literal Programming document that where marked in various ways


## Document Syntax

### org mode

   #+begin_src emacs-lisp :tangle "/path/to/.emacs" :comments both :noweb tangle
   <<settings>>
   #+end_src

   #+name: settings
   #+begin_src emacs-lisp
   (yas/load/directory "/path/to/my/snippets")
   #+end_src


## Licensing

Copyright (C) 2023 Ben Taca

Use of this source code is governed by an MIT-style
license that can be found in the LICENSE.txt file or at
https://opensource.org/licenses/MIT.

