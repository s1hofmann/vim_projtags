# vim_projtags

vim_projtags is a vim plugin i wrote to ease the generation of tag files for my different software projects.

## Setup

Clone this repository and copy the files into your ~/.vim folder.

Create a file with the ending \*.projroot in your projects root directory which contains ctags parameters, one parameter per line, similar to a ~/.ctags config file in your home directory.

Add the following line to your .vimrc:

```
map <leader>ut :call GenerateTags()<CR>
```
### Note:

You don't have to supply a path to store the tag file. The plugin automatically stores the tag file in ~/.vim/tags/$projectname.tags.

If you provide a path anyways, this option will be discarded.

## How does it work?

The plugin will perform a upward search for a \*.projroot file, starting from your current directory level, and set the projects main directory accordingly.

Now if you want to initially create or update the tags file for your current project, simply hit 
\<leader\>ut to update the tags file using the parameters you supplied in the \*.projroot file.

This will generate a tags file named after your projects root directory and store it ~/.vim/tags/

A projects tag file will automatically be loaded at startup.
