#!/bin/bash
############################
# .make.sh
# This script creates symlinks from the home directory to any desired dotfiles
# in ~/dotfiles
############################

########## Variables

DIR=~/dotfiles              # dotfiles directory
OLD_DIR=~/dotfiles_old      # old dotfiles backup directory
FILES="vimrc"               # list of files to symlink in the home directory

##########

# Create dotfiles_old in home directory
echo "Creating $OLD_DIR backup of any existing dotfiles in ~"
mkdir -p $OLD_DIR
echo "...done"


# Change to the dotfiles directory
echo "Changing to the $DIR directory"
cd $DIR
echo "..done"

# Move any existing dotfiles in homedir to dotfiles_old directory, then create
# symlinks 
echo "Moving any existing dotfiles from ~ to $OLD_DIR"
for FILE in $FILES; do 
        echo "Moving $FILE  to $OLD_DIR"
        mv ~/.$FILE $OLD_DIR/
        echo "Creating symlink to $FILE in home directory."
        ln -s $DIR/$FILE ~/.$FILE
done
