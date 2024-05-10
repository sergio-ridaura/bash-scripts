# First steps in Vim

[Vim](http://www.vim.org/) is an open source, highly configurable text editor. Its name is an acronym for Vi Improved, referring to its relationship to the Vi text editor, which was originally developed in the 1970s. Vim has become a popular tool among programmers and administrators. of systems due to their efficiency, power and flexibility.

## Setting

Configure Vim with the `.vimrc` file, from your main user folder.

Or use commands to modify the settings. For example: To show the numbers of each line, `:set nu` or to not show them use the `:set nu!` command.

## Modes

Each command or key combination uses a different mode:

- COMMAND mode: Access with the `[ ESC ]` key.
- INSERT mode: Access with the `[ I ]` or `[ INSERT ]` or `[ A ]` key.
- VISUAL Mode: Access with the `[ V ]` key.

## COMMAND mode

### Save or exit the document

- Save: `:w`.
- Exit: `:q`.
- Save and exit: `:wq` or `:x`.
- Force save: `:w!`.
- Force save and exit: `:wq!` or `:x!`.
- Do not save and exit: `:q!`.

### Offset

- Above: `[K]`.
- Below: `[ J ]`.
- Left: `[L]`.
- Right: `[H]`.

To repeat the action, add the amount before. For example: `[ NUMBER ] [ J ]`.

- Start of the next word: `[ W ]`.
- Beginning of the previous word: `[ B ]`.
- End of the following word: `[ E ]`.

- Start of letter and change to INSERT mode: `[ I ]`.
- End of letter and change to INSERT mode: `[ A ]`.
- End of line and change to INSERT mode: `[ SHIFT ] + [ A ]`.

- New line and change to INSERT mode: `[ O ]`.

- Start of line: `[ 0 ]`.
- End of line: `[ SHIFT ] + [ 4 ]`.

- Start of document: `[ G ] [ G ]`.
- End of document: `[ SHIFT ] [ G ]`.

- Go to the indicated line, use the line number before: `[ NUMBER ] [ SHIFT ] + [ G ]`.

- The edit command opens a document: `:edit`.

### Cut and copy

- Short line: `[ D ] [ D ]`.
- Copy line: `[ Y ] [ Y ]`.
- Paste line: `[ P ]`.

To repeat the action, add the amount between the two letters. For example: `[ D ] [ NUMBER ] [ D ]`.

### Undo and redo

- Undo: `[ U ]`.
- Redo: `[ CRTL ] + [ R ]`.

### Search

- Search with the `[ / ]` key and then the text.
- Search for next: `[ N ]`.
- Search previous: `[ SHIFT ] + [ N ]`.

- Find the next letter in the line: `[ F ] [ LETTER ]`.
- Find the previous letter of the line: `[ SHIFT ] + [ F ] [ LETTER ]`.
- Search for the next word the same as the one where the cursor is: `[ * ]`.

### Delete and replace

- Delete character: `[ X ]`.
- Delete previous character: `[ SHIFT ] + [ X ]`.
- Delete until the end of the word: `[ D ] [ W ]`.
- Replaces the character: `[ R ]`.

## VISUAL Mode

- Cut selection: `[ D ]`, and then paste with `[ P ]`.
