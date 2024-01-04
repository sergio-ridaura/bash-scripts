# Macro in Vim

[Vim](http://www.vim.org/) macros store the actions performed in the text to repeat them later.

## New macro

In COMMAND mode, use the `[ Q ]` key and a letter to reference and start the macro.

Perform the actions to store in the macro, when you finish enter COMMAND mode and use the `[ Q ]` key.

Execute the macro, in COMMAND mode, with the `[ @ ]` key and its reference letter. Or use `[ @ ] [ @ ]` to run the last stored macro.

Repeat the macro, adding the amount before running the macro. For example: `[ 6 ] [ @ ] [ @ ]`.

## Edit macro

You can overwrite macros, as if it were a new macro.

You can add new actions at the end of the macro, with `[ SHIFT ]` and the reference letter. It ends as if it were a new macro.
