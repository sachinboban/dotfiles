#!/bin/bash
############################
# .make.sh
# This script creates symlinks from the home directory to any desired dotfiles
############################

########## Variables

DIR=$PWD                    # current dotfiles directory
BACKUP_DIR=~/dotfiles_old   # old dotfiles backup directory

# List of dotfiles to install
DOTFILE_LIST="vim bash"
##########

# Create dotfiles_old in home directory
mkdir -p $BACKUP_DIR

# Change to the dotfiles directory
cd $DIR

# Move any existing dotfiles in homedir to dotfiles_old directory, then create
# symlinks
for DOTFILE in $DOTFILE_LIST; do
    if [ -f ~/.${DOTFILE}rc ]
    then
        mv ~/.${DOTFILE}rc $BACKUP_DIR/
    fi
    if [ -d ~/.$DOTFILE ]
    then
       mv ~/.$DOTFILE $BACKUP_DIR
    fi

    echo "Creating symlinks to ${DOTFILE}rc in home directory."
    ln -s $DIR/$DOTFILE/${DOTFILE}rc ~/.${DOTFILE}rc

    if  [ -d $DIR/$DOTFILE/$DOTFILE ]
    then
        echo "Creating symlinks to ${DOTFILE}/ in home directory."
        ln -s $DIR/$DOTFILE/$DOTFILE ~/.$DOTFILE
    fi
done
