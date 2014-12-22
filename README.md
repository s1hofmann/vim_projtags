# vim_projtags

vim_projtags is a vim plugin i wrote to ease the generation of tag files for my different software projects.

## How does it work?

Create a file with the ending \*.projroot in your projects root directory which contains the command to generate your tags.

The plugin will search for such a file and set the projects main directory accordingly. 
Now if you want to initially create or update the tags file for your current project, simply hit 
<leader>ut to update the tags file using the command you supplied in the \*.projroot file.

This will generate a tags file named after your projects root directory and store it ~/.vim/tags/
