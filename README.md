# vim-byline
Vim macro to sign your work

Byline allows you to quickly define an abbreviation (or mapping, if you'd
rather, but it's not recommended) to insert a dated signature.  I use it to
attribute comments and keep track of when I made them, without needing to pop
open `git blame`.  Also, the date stamps will survive things like formatting
or refactoring commits.

The main reason I finally migrated this to a plugin instead of just a function
in my vimrc is to be able to override the signature format per project using
the excellent [vim-localvimrc plugin](https://github.com/embear/vim-localvimrc/)


## Usage
Set `g:bylineName` to whatever name you want to sign things with, default is
'Anon'

Set `g:bylineDateStr` to a string `strftime()` will understand to set the date
format.  Default is `%d %b %Y %X`, which looks like `13 Oct 2015 23:18:56`.
See `:help strftime` for more information.

Finally, and most importantly, you need to set up an abbreviation for it to do
anything. Mine looks like this:

```
iab MT <C-R>=BylineInsert()<cr>
```

Change `MT` to a sequence you don't type often.  As with any abbreviation, you
can use `<c-v>` after typing it to get the literal text.


## Prior work
This is based off a vim tip for inserting the current date:
http://vim.wikia.com/wiki/VimTip97 and has been floating around in my vimrc
for close to a decade.
