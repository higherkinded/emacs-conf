## What?

A somewhat modular Emacs configuration based around `evil-mode`. Some degree of
automatization is present. Tricky `lsp-mode` trigger is also there. You don't
have to manually add it to your language hooks: if `lsp-mode` supports it, it
will be loaded up automatically. This probably needs an ignore list that will
judge stuff based on file extension but I don't need this functionality yet.
Fork/create an issue.

## How to install?

Ideally? You should fork it and then do something like
`git clone ${your_repo} ~/.emacs.d`. Then you just spin up your Emacs and wait
for it to finish pulling the deps.

## Modifying

### Packages?

Throw in some package names in `package-list.el`. Specifically, `packages/list`
is the list you want to add these to.

### Language-related customizations?

You make a file in `lang/`. `init.el` automatically pulls stuff from `lang/` at
the end of core init procedure.

### Keybindings?

Go and do whatever you like with `keybindings.el`.

### Global modes?

`modes.el`.

### Visual customizations?

`visual.el`.

### Stuff that would probably upset RMS?

`sorry-rms.el`.
