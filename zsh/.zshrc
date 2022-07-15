# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
ZSH_THEME="agnoster"

# Set list of themes to pick from when loading at random
# Setting this variable when ZSH_THEME=random will cause zsh to load
# a theme from this variable instead of looking in $ZSH/themes/
# If set to an empty array, this variable will have no effect.
# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion.
# Case-sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment one of the following lines to change the auto-update behavior
# zstyle ':omz:update' mode disabled  # disable automatic updates
# zstyle ':omz:update' mode auto      # update automatically without asking
# zstyle ':omz:update' mode reminder  # just remind me to update when it's time

# Uncomment the following line to change how often to auto-update (in days).
# zstyle ':omz:update' frequency 13

# Uncomment the following line if pasting URLs and other text is messed up.
# DISABLE_MAGIC_FUNCTIONS="true"

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# You can also set it to another string to have that shown instead of the default red dots.
# e.g. COMPLETION_WAITING_DOTS="%F{yellow}waiting...%f"
# Caution: this setting can cause issues with multiline prompts in zsh < 5.7.1 (see #5765)
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# You can set one of the optional three formats:
# "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# or set a custom format using the strftime function format specifications,
# see 'man strftime' for details.
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load?
# Standard plugins can be found in $ZSH/plugins/
# Custom plugins may be added to $ZSH_CUSTOM/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git)

source $ZSH/oh-my-zsh.sh

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"
# copied my entire ~/.ssh folder over
# scp -r 192.168.1.10:/Users/dhardy1/.ssh ~/
# install rectangle app and "remove keyboard shortcut restrictions" so that CMD+OPTION+f does full screen
# install iTerm2
# install VS Code and find .vscode/tasks.json in tsheets-app from your old system
#       mkdir ~/dev/tsheets-app/.vscode/
#       scp -r 192.168.1.10:/Users/dhardy1/dev/tsheets-app/.vscode ~/dev/tsheets-app
# install beyond compare, license is in hard2737@hotmail.com email
# install homebrew first
# brew install composer
# brew install php@7.4
# php --ini
# pecl install xdebug
# brew install fswatch
# scp -r 192.168.1.10:/Users/dhardy1/dev/tsync ~/dev

echo ".iterm shell integration"
test -e "${HOME}/.iterm2_shell_integration.zsh" && source "${HOME}/.iterm2_shell_integration.zsh"
echo ".iterm shell integration done"
export PATH="/Users/dhardy1/.iterm2:$PATH"

# Add Visual Studio Code (code)
export PATH="$PATH:/Applications/Visual Studio Code.app/Contents/Resources/app/bin"


alias lntx="ssh amorweb-dev"
alias shaz="ssh amorweb-prd"

#alias rdbg="ssh -nT -R 9040:localhost:9000 amorweb-dev \"tail -f /var/log/tsheets-app /var/log/tsheets-dcm /var/log/apache2/tsheets.com/error.log | egrep --line-buffered 'ERROR|CRIT'\""
#alias rdbg="ssh -nT -R 9040:localhost:9000 amorweb-dev \"tail -f /var/log/tsheets-app /var/log/tsheets-dcm /var/log/apache2/tsheets.com/error.log | egrep --line-buffered 'XXX'\""
#alias rdbg="ssh -nT -R 9040:localhost:9000 amorweb-dev \"tail -f /var/log/tsheets-app /var/log/tsheets-dcm /var/log/apache2/tsheets.com/error.log | egrep --line-buffered 'dhardy'\""
alias root="cd ~/dev/tsheets-app"
alias projects="cd ~/dev/tsheets-frontend-app-projects/"
alias f='function findDisText(){ fgrep -F -i -R "$1" ./* }'
#alias ralias='source ~/.zprofile' # don't do this anymore, please
alias usbwow='ioreg -p IOUSB'
alias usbwow2='system_profiler SPUSBDataType'
alias pngwow='openssl base64 -in piclits17-logo-main.png -out foo.base64'


function diff2() {
bcompare "$1" "$2"
}
function revert() {
git reset "$1"
git restore "$1"
}
#git config --global diff.tool bc
#git config --global merge.tool bc
#git config --global mergetool.bc.trustExitCode true
#git config --global difftool.prompt false
#git config --global user.email "david_hardy@intuit.com"
#git config --global user.name "David Hardy"
#git config --global push.default current
#brew install gh
#
#
# need to figure out
# git show  --ext-diff 5feff859eeeafc8ee7ce18ed66ffe0d1cad7da32
export GIT_EXTERNAL_DIFF=/usr/local/bin/bcomp




function dev_zoo_habitat_designer(){
    #/Users/dhardy1/dev/dev-zoo/habitat-designer.sh --deployment=/Users/dhardy1/dev/dhardy1-app-dev-deployment --arn=arn:aws:iam::839649404342:role/k8s-sandbox-sandbox-dhardy1-app-dev-usw2-ppd-e2e
    habitat-designer --deployment=update
}
function dz(){
    cd ~/dev/tsheets-app
    dev-zoo --client=dhardy
}
function dzn(){
    cd ~/dev/tsheets-app
    dev-zoo --client=dhardy --no-xdebug
}

function pulls() {
	open "https://github.intuit.com/timecapture/tsheets-frontend-app-manage-jobs/pulls/dhardy1";
	open "https://github.intuit.com/timecapture/tsheets-frontend-app-projects/pulls/dhardy1";
	open "https://github.intuit.com/timecapture/tsheets-frontend-app-user-list/pulls/dhardy1";
	open "https://github.intuit.com/timecapture/tsheets-frontend-app-onboarding-guide/pulls/dhardy1";
	open "https://github.intuit.com/timecapture-core/tsheets-app/pulls/dhardy1";
}
function meet() {
	if [ "$1" = "scrum" ]; then
		open "zoommtg://zoom.us/join?action=join&confno=2085158412"
	elif [ "$1" = "kill" ]; then
		pkill zoom.us
	elif [ "$1" = "mark" ]; then
		open "zoommtg://zoom.us/join?action=join&confno=2428053039"
	elif [ "$1" = "andy" ]; then
		open "zoommtg://zoom.us/join?action=join&confno=85860046869?pwd=YmRDZ0dmd2Y1OHNtbEJOdTJkckZsQT09"
	elif [ "$1" = "audrey" ]; then
		open "zoommtg://zoom.us/join?action=join&confno=2082865542"
	elif [ "$1" = "darren" ]; then
		open "zoommtg://zoom.us/join?action=join&confno=6809573239"
	elif [ "$1" = "allhands" ]; then
		open "zoommtg://zoom.us/join?action=join&confno=93681164561"
	elif [ "$1" = "kumar" ]; then
		open "zoommtg://zoom.us/join?action=join&confno=3112085687"
	elif [ "$1" = "katy" ]; then
		open "zoommtg://zoom.us/join?action=join&confno=2083083838"
	elif [ "$1" = "neider" ]; then
		open "zoommtg://zoom.us/join?action=join&confno=21413385146"
	elif [ "$1" = "jesse" ]; then
		open "zoommtg://zoom.us/join?action=join&confno=9250451986"
	else 
		open "zoommtg://zoom.us/join?action=join&confno=9567544250"
		echo "\e[1;32m https://intuit.zoom.us/j/9567544250 \e[m" | lolcat
		echo "https://intuit.zoom.us/j/9567544250" | pbcopy
	fi
}
function scrum() {
	meet "scrum"
}

function gomj() {
echo "clean projects" | lolcat
pushd ~/dev/tsheets-frontend-app-projects
nvm use 
yarn unlink
rm -rf node_modules dist
yarn install
yarn build
yarn link
echo "clean manage jobs, link to projects, and start" | lolcat
pushd ~/dev/tsheets-frontend-app-manage-jobs
rm -rf node_modules dist
yarn link @tsheets/projects
yarn install
yarn start
}

function gotsuip() {
echo "clean ts-ui" | lolcat
pushd ~/dev/tsheets-ui
nvm use 
yarn unlink
rm -rf node_modules dist
yarn install
yarn build
yarn link
echo "clean projects, link to ts-ui, and start" | lolcat
pushd ~/dev/tsheets-frontend-app-projects
nvm use
rm -rf node_modules dist
yarn link @tsheets/tsheets-ui
yarn install
yarn start
}

function gomaps() {
pushd ~/dev/tsheets-frontend-app-maps-ui
nvm use 
yarn unlink
rm -rf node_modules dist
yarn install
yarn build
yarn link
pushd ~/dev/tsheets-frontend-app-timesheet-map
nvm use
rm -rf node_modules dist
yarn link @tsheets/maps-ui
yarn install
yarn start
}

function sync(){
	tsync prod&
	tsync dev&
}
function stash() {
	git stash save -u $1`date +%A_%Y_%m_%d_%H_%M_%S`
}
function c() {
	code -n .
}


function squash8(){
#this is how to squash your branch with 8 commits in it
	git rebase -i HEAD~8
}

function cmx(){
    git stash
    git checkout -b fff
    git branch -D master
    git fetch
    git reset --hard origin/master
    git checkout master
    git branch -D fff
    composer install
}

#When downloading content from a remote repo, git pull and git fetch commands are available to accomplish the task. You can consider git fetch the 'safe' version of the two commands. It will download the remote content but not update your local repo's working state, leaving your current work intact. git pull is the more aggressive alternative; it will download the remote content for the active local branch and immediately execute git merge to create a merge commit for the new remote content. If you have pending changes in progress this will cause conflicts and kick-off the merge conflict resolution flow.
function cm(){
    git add .
    # make a patch notes https://stackoverflow.com/questions/5159185/create-a-git-patch-from-the-uncommitted-changes-in-the-current-working-directory
    git diff HEAD --cached --binary > ~/dev/shelf/`date +%A_%Y_%m_%d_%H_%M_%S``git branch --show-current | sed -e 's/\//_/'`.patch # creates a patch where we want
    git stash save -u `date +%A_%Y_%m_%d_%H_%M_%S` WIP # `git restore --staged . & git reset --hard HEAD` would be another approach
    git checkout master
    git pull
    composer install
}

function gotest() {
    
    echo "Running bug-catcher ${runfu} at `date` ..." | lolcat
    cd ~/dev/tsheets-app
    echo "remember, speed things up for debugging cycles (doesn't do all the clean up): dcm.pl -r qa run run-mode=phpunit parse=qa-ts-users fn=test_failed_login_count client=dhardy user=davidahadee+iamtestemailboom@gmail.com -v"

    composer itest -- --client=dhardy --url=dhardy.tsheets-dev.com --target-user=dhardy --user=dhardy --num-clients=100
    echo "...Ran integration tests at `date`" | lolcat
    composer test
    echo "...Ran phpunit at `date`" | lolcat
}
function gotest2() {
    echo "...Running phpunit at `date`" | lolcat
    XDEBUG_MODE=off error_reporting=0 ./vendor/bin/phpunit --colors=always --printer=TSheets\\TestHelpers\\LocalResultPrinter -d memory_limit=1024M
    echo "...Ran phpunit at `date`" | lolcat
}
function testfn() {
    
    echo "Running bug-catcher ${runfu} at `date` ..." | lolcat
    cd ~/dev/tsheets-app
    composer itest -- --client=dhardy --url=dhardy.tsheets-dev.com --target-user=dhardy --user=dhardy --num-clients=100 --tests=$1 --filter=$2
    echo "...Ran integration tests at `date`" | lolcat
    echo "remember, speed things up for debugging cycles (doesn't do all the clean up): dcm.pl -r qa run run-mode=phpunit parse=qa-ts-users fn=test_failed_login_count client=dhardy user=davidahadee+iamtestemailboom@gmail.com -v"
}

function phpstorm(){
open -na /Applications/PhpStorm.app --args "`pwd`"
}
function ssh_dz(){
kubectl exec -it $(kubectl get pods -o name | grep tsheets-app-webapp | cut -d "/" -f2) /bin/bash
}
function testy(){
kubectl exec -it $(kubectl get pods -o name | grep tsheets-app-webapp | cut -d "/" -f2) "/bin/bash && ls -al /var/www/tsheets.com/*.csv /var/www/tsheets.com/*.xlsx"
}
function rdbgprod(){
#ssh -nT -R 9040:localhost:9000 shazdev2.tsheets.com "tail -f /var/log/tsheets-app /var/log/tsheets-dcm /var/log/apache2/tsheets.com/error.log | egrep --line-buffered '$1'"
ssh -nT -R 9040:localhost:9000 amorweb-prd "tail -f /var/log/tsheets-app /var/log/tsheets-dcm /var/log/apache2/tsheets.com/error.log | egrep --line-buffered '$1'"

}
function rdbg(){
ssh -nT -R 9040:localhost:9000 amorweb-dev  "tail -f /var/log/tsheets-app /var/log/tsheets-dcm /var/log/apache2/tsheets.com/error.log | egrep --line-buffered '$1'"
}

function login(){
eiamcli login
~/update_keys.sh
}

function killbar(){
pkill "Touch Bar agent";
killall "ControlStrip";
}



#If you are not using the --delete option with rsync, when you shelve a change locally, any new files that you added will not automatically get removed from the remote machine. You can clean up those files on the remote directory by running this command

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
export GREP_OPTIONS='--color=always'


defaults write com.apple.appstore ShowDebugMenu -bool true
defaults write com.apple.finder AppleShowAllFiles TRUE 
defaults write com.apple.appstore ShowDebugMenu -bool true


#defaults write com.apple.dock tilesize -float 1; killall Dock

export EDITOR=vim
set -o vi
set editing-mode vi
set keymap vi-command
set keymap vi-insert

export NODE_OPTIONS='--max_old_space_size=4096'

##
# Your previous /Users/dhardy1/.zprofile file was backed up as /Users/dhardy1/.zprofile.macports-saved_2020-03-13_at_14:05:08
##

# MacPorts Installer addition on 2020-03-13_at_14:05:08: adding an appropriate PATH variable for use with MacPorts.
export PATH="/opt/local/bin:/opt/local/sbin:$PATH"
# Finished adapting your PATH environment variable for use with MacPorts.

# php shit
export PATH="/opt/homebrew/opt/php@7.4/bin:$PATH"
export PATH="/opt/homebrew/opt/php@7.4/sbin:$PATH"

# For compilers to find php@7.4 
export LDFLAGS="-L/opt/homebrew/opt/php@7.4/lib"
export CPPFLAGS="-I/opt/homebrew/opt/php@7.4/include"

export PATH="${PATH}:/Users/dhardy1/dev/tsync"

# Show all of the .folders
defaults write com.apple.finder AppleShowAllFiles TRUE
# I'm not sure that really works so the keyboard shortcut works in the Finder window:
# Shift + Command + "." 

# Odd, you have to turn this on for repeating keys
defaults write -g ApplePressAndHoldEnabled -bool false

export NVM_DIR="$HOME/.nvm"
[ -s "/opt/homebrew/opt/nvm/nvm.sh" ] && \. "/opt/homebrew/opt/nvm/nvm.sh"  # This loads nvm
[ -s "/opt/homebrew/opt/nvm/etc/bash_completion.d/nvm" ] && \. "/opt/homebrew/opt/nvm/etc/bash_completion.d/nvm"  # This loads nvm bash_completion

# make sure that yarn is grabbing from the correct registry
# npm config set -g registry https://registry.npmjs.intuit.com/







# these are my editor config changes, they should be re-evaluated
set -o vi
set editing-mode vi
set keymap vi-command
set keymap vi-insert
export EDITOR=vi
#export PATH="${PATH}:${HOME}/Library/Android/sdk/platform-tools"

#iOS dev stuff
#eval "$(rbenv init - zsh)"


echo $PATH;
echo "just ran .zshrc"

