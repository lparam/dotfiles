# ~/.profile: executed by the command interpreter for login shells.
# This file is not read by bash(1), if ~/.bash_profile or ~/.bash_login
# exists.
# see /usr/share/doc/bash/examples/startup-files for examples.
# the files are located in the bash-doc package.

# the default umask is set in /etc/profile; for setting the umask
# for ssh logins, install and configure the libpam-umask package.
#umask 022

# if running bash
if [ -n "$BASH_VERSION" ]; then
    # include .bashrc if it exists
    if [ -f "$HOME/.bashrc" ]; then
	. "$HOME/.bashrc"
    fi
fi

# set PATH so it includes user's private bin if it exists
if [ -d "$HOME/bin" ] ; then
    PATH="$HOME/bin:$PATH"
fi

# New environment setting added by Sourcery G++ Lite for ARM EABI on Sat Apr 30 00:07:52 CST 2011 1.
# The unmodified version of this file is saved in /home/lparam/.profile104096649.
# Do NOT modify these lines; they are used to uninstall.
export MANPAGER="/usr/bin/most -s"

PATH="/home/lparam/CodeSourcery/Sourcery_G++_Lite/bin:/home/lparam/CodeSourcery/Sourcery_G++_Lite_ARM_EABI/bin:${PATH}"
PATH="${PATH}:/home/lparam/WindRiver:/home/lparam/WindRiver/gnu/4.1.2-vxworks-6.7/x86-linux2/bin"
export PATH
# End comments by InstallAnywhere on Sat Apr 30 00:07:52 CST 2011 1.
