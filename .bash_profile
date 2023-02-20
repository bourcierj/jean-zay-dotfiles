#
# ~/.bash_profile
#

umask 007

# make sure that the .bashrc is run when logging in (see: https://jean-zay-doc.readthedocs.io/en/latest/tips/shell/#bash-config)
[[ -f ~/.bashrc ]] && . ~/.bashrc

# set PATH so it includes user's private bin if it exists
if [ -d "$HOME/bin" ] ; then
    PATH="$HOME/bin:$PATH"
fi

# set PATH so it includes user's private bin if it exists
if [ -d "$HOME/.local/bin" ] ; then
    PATH="$HOME/.local/bin:$PATH"
fi

