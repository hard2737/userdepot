echo "running .profile"


alias dev="/Applications/PhpStorm.app/Contents/MacOS/phpstorm /Users/hard2737/dev/lntxweb1 &"
alias prod="/Applications/PhpStorm.app/Contents/MacOS/phpstorm /Users/hard2737/dev/shazdev &"
alias lntx="ssh lntxweb1.tsheets-dev.com"
alias shaz="ssh shazdev.tsheets.com"
alias beta="ssh beta-dhardy.tsheets.com"
alias rdbg="ssh -nT -R 9040:localhost:9000 lntxweb1.tsheets-dev.com \"tail -f /var/log/tsheets-app /var/log/tsheets-dcm /var/log/apache2/tsheets.com/error.log | egrep --line-buffered 'dhardy'\""
alias rdbgprod="ssh -nT -R 9040:localhost:9000 shazdev.tsheets.com \"tail -f /var/log/tsheets-app /var/log/tsheets-dcm /var/log/apache2/tsheets.com/error.log | egrep --line-buffered 'dhardy'\""
alias rdbgbeta="ssh -nT -R 9040:localhost:9000 beta-dhardy.tsheets.com \"tail -f /var/log/tsheets-app /var/log/tsheets-dcm /var/log/apache2/tsheets.com/error.log | egrep --line-buffered 'dhardy'\""
alias phabdev="open https://lngadevtool1.tsheets.com/"
alias dirsb="find . -path \*$1\*"
alias arcw="arc which"
alias arcun="arc diff --update $1"
alias arcp="arc patch $1"
alias srcl="cd ~/dev/lntxweb1"
alias srcs="cd ~/dev/shazdev"
alias srcu="cd ~/dev/userdepot"
alias srcw="cd ~/dev/www"
alias piclits="cd ~/dev/piclits"
alias testc="cd /var/www/dhardy.tsheets-dev.com && ./include/qa/trun.phps parse=qa-shared-signup.inc.php"
alias testfn="cd /var/www/dhardy.tsheets-dev.com && ./include/qa/trun.phps parse=qa-shared-signup.inc.php fn=test_install_affiliate_reports_for_children"



#If you are not using the --delete option with rsync, when you shelve a change locally, any new files that you added will not automatically get removed from the remote machine. You can clean up those files on the remote directory by running this command
alias rclean="svn status | grep ^\? | cut -c9- | xargs -d \\\\n rm -r"


#on lntx for testing init runs
alias rtest="ssh lntxweb1.tsheets-dev.com 'cd /var/www/dhardy.tsheets-dev.com && ./include/qa/trun.phps client=qadhardy1'"
alias rtest2="ssh lntxweb1.tsheets-dev.com 'cd /var/www/dhardy.tsheets-dev.com && ./include/qa/trun.phps client=qadhardy2'"

#normal run
alias rtestx="ssh lntxweb1.tsheets-dev.com 'cd /var/www/dhardy.tsheets-dev.com && ./include/qa/trun.phps'"





#bad dos monkey
alias dir="ls -al"

alias diff="git difftool $1"




export LANG="en_US.UTF-8"
export LC_COLLATE="en_US.UTF-8"
export LC_CTYPE="en_US.UTF-8"
export LC_MESSAGES="en_US.UTF-8"
export LC_MONETARY="en_US.UTF-8"
export LC_NUMERIC="en_US.UTF-8"
export LC_TIME="en_US.UTF-8"
export LC_ALL="en_US.UTF-8"


defaults write com.apple.finder AppleShowAllFiles TRUE 

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
export PATH="$HOME/dev/tools/arcanist/bin:$PATH"

export EDITOR=vim
easyarc_create() { TMPFILE1=$(mktemp); TMPFILE2=$(mktemp); svn status | grep "^[\A|\M]" | awk '{print $2}' > $TMPFILE1; vim -c ":0r $TMPFILE1" $TMPFILE2 ; if [ -s "$TMPFILE2" ];then arc diff --create $(cat $TMPFILE2 | tr '\n' ' '); else echo "Vim not written out. Aborting commit."; rm -rf $TMPFILE1; rm -rf $TMPFILE2;fi ;}

easyarc_update() { TMPFILE1=$(mktemp); TMPFILE2=$(mktemp); svn status | grep "^[\A|\M|\D]" | awk '{print $2}' > $TMPFILE1; vim -c ":0r $TMPFILE1" $TMPFILE2 ; if [ -s "$TMPFILE2" ];then arc diff --update $1 $(cat $TMPFILE2 | tr '\n' ' '); else echo "Vim not written out. Aborting commit."; rm -rf $TMPFILE1; rm -rf $TMPFILE2;fi ;}









echo -en "\033[31m"
#cat << "ASCIIART"
#MMMMMMMMMMMMMMMMMMMMMMMMMMMMND8OZ$$Z$$$$$$$$$$ZO88NMMMMMMMMMMMMMMMMMMMMMMMMMMMMM
#MMMMMMMMMMMMMMMMMMMMMMMMN88$$$$$$$$$$$$$$$$$$$$$$$$$88NMMMMMMMMMMMMMMMMMMMMMMMMM
#MMMMMMMMMMMMMMMMMMMMMDOZZ$$$$$$$$$$$$$$$$$$$$$$$$$$$Z$ZZZDMMMMMMMMMMMMMMMMMMMMMM
#MMMMMMMMMMMMMMMMMMNNZ$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$Z$$ZONMMMMMMMMMMMMMMMMMMM
#MMMMMMMMMMMMMMMMM8$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$Z8MMMMMMMMMMMMMMMMMM
#MMMMMMMMMMMMMMMZO$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$ZOMMMMMMMMMMMMMMMM
#MMMMMMMMMMMMMMZ$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$ZNNMMMMMMMMMMMMM
#MMMMMMMMMMMNZZ$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$ZZNMMMMMMMMMMMM
#MMMMMMMMMMNZZ$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$ZNMMMMMMMMMMM
#MMMMMMMMNNZ$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$ZZNMMMMMMMMM
#MMMMMMM8$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$Z8MMMMMMMM
#MMMMMNN$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$NNMMMMMM
#MMMMMZZ$$$$$$$$??:::::::::::::::::::::::::::::::::::::::::::::++Z$$$$$$$OOMMMMMM
#MMMMD$$$$$$$$Z~.................................................,Z$$$$$$$$DMMMMM
#MMMMZ$$$$$$$7I...................................................+?$$$$$$$ZMMMMM
#MMNN$$$$$$$$=+...................................................~~$$$$$$$$NNMMM
#MM88$$$$$$$$++...................................................~=$$$$$$$$88MMM
#MMZ$$$$$$$$$$7...................................................II$$$$$$$$$$MMM
#MNZ$$$$$$$$$$$?.................................................=$$$$$$$$$$$ZNMM
#M8Z$$$$$$$$$$$$7$+++++++++++++++++:.........,=++++++++++++++++I7$$$$$$$$$$$$$8MM
#MZ$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$Z+.........:Z$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$ZMM
#M$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$Z+.........:Z$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$MM
#N$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$Z+.........:Z$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$NN
#N$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$Z+.........:Z$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$NN
#N$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$Z+.........:Z$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$NN
#N$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$Z+.........:Z$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$NN
#N$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$Z+.........:Z$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$NN
#N$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$Z+.........:Z$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$NN
#M$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$Z+.........:Z$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$MM
#MZ$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$Z+.........:Z$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$ZMM
#M8Z$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$Z+.........:Z$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$8MM
#MNZ$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$Z+.........:Z$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$ZNMM
#MMZ$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$Z+.........:Z$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$MMM
#MM88$$$$$$$$$$$$$$$$$$$$$$$$$$$$$Z+.........:Z$$$$$$$$$$$$$$$$$$$$$$$$$$$$$88MMM
#MMNN$$$$$$$$$$$$$$$$$$$$$$$$$$$$$Z+.........:Z$$$$$$$$$$$$$$$$$$$$$$$$$$$$$NNMMM
#MMMMZ$$$$$$$$$$$$$$$$$$$$$$$$$$$$Z+.........:Z$$$$$$$$$$$$$$$$$$$$$$$$$$$$ZMMMMM
#MMMMD$$$$$$$$$$$$$$$$$$$$$$$$$$$$Z+.........:Z$$$$$$$$$$$$$$$$$$$$$$$$$$$$DMMMMM
#MMMMMZZ$$$$$$$$$$$$$$$$$$$$$$$$$$Z+.........:Z$$$$$$$$$$$$$$$$$$$$$$$$$$OOMMMMMM
#MMMMMNN$$$$$$$$$$$$$$$$$$$$$$$$$$$+.........:Z$$$$$$$$$$$$$$$$$$$$$$$$$$NNMMMMMM
#MMMMMMM8$$$$$$$$$$$$$$$$$$$$$$$$$$7.........=$$$$$$$$$$$$$$$$$$$$$$$$$Z8MMMMMMMM
#MMMMMMMMNNZ$$$$$$$$$$$$$$$$$$$$$$$$Z$I??=+$$$$$$$$$$$$$$$$$$$$$$$$$$ZZNMMMMMMMMM
#MMMMMMMMMMNZZ$$$$$$$$$$$$$$$$$$$$$$$Z$$$Z$$Z$$$$$$$$$$$$$$$$$$$$$$$ZNMMMMMMMMMMM
#MMMMMMMMMMMNZZ$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$ZZNMMMMMMMMMMMM
#MMMMMMMMMMMMMMZ$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$ZNNMMMMMMMMMMMMM
#MMMMMMMMMMMMMMMZO$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$ZOMMMMMMMMMMMMMMMM
#MMMMMMMMMMMMMMMMM8$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$Z8MMMMMMMMMMMMMMMMMM
#MMMMMMMMMMMMMMMMMMNNO$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$Z$$OONMMMMMMMMMMMMMMMMMMM
#MMMMMMMMMMMMMMMMMMMMMDOZZ$$$$$$$$$$$$$$$$$$$$$$$$$$$Z$ZZZDMMMMMMMMMMMMMMMMMMMMMM
#MMMMMMMMMMMMMMMMMMMMMMMMN88$$$$$$$$$$$$$$$$$$$$$$$$$88NMMMMMMMMMMMMMMMMMMMMMMMMM
#MMMMMMMMMMMMMMMMMMMMMMMMMMMMND8OZ$$$$$$$$$$$$$ZO88NMMMMMMMMMMMMMMMMMMMMMMMMMMMMM
#MMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMNNNNNNNNNMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMM
#
#ASCIIART


