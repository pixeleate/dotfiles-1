PATH="/usr/local/bin:/usr/local/sbin:$PATH"

# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
bindkey -e
# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
zstyle :compinstall filename '/Users/orr/.zshrc'

autoload -Uz compinit
compinit
# End of lines added by compinstall


export MAVEN_OPTS="-Xmx512m -XX:MaxPermSize=128m"

PS1=$'\e[0;30m[%D{%Y-%m-%d %H:%M:%S}] \e[0;31m%~ $ \e[0m' # set prompt

# aliases
alias back='cd -'                               # go back one folder
alias path='echo $PATH | tr ":" "\n" | sort'    # print $path nicely
alias ls='ls -1AGThl'                           # default format for ls
alias l='ls'                                    # make l also work for ls
alias cdd='ccd'                                 # in case you confuse ccd and cdd
alias mkdir='mkdir -p'                          # creat dirs recursively
alias ln='ln -v'                                # make ln verbose
alias ..='cd ..'                                # make .. go up a folder
alias size='du -sh'                             # get folder size
alias cls='clear'                               # clean screen
alias hosts='subl /private/etc/hosts'           # shortcut for editing hosts file
alias ip='ifconfig | grep "inet "'              # quickly print ip address
alias grep='grep --color=auto'                  # color grep matches
alias tojson='python -mjson.tool'               # print pretty json
alias toJson=tojson
alias toxml='xmllint --format -'
alias toXml=toxml
alias tohtml='xmllint --html -'
alias toHtml=tohtml
alias count='wc -l'                             # count lines
alias diskusg='df -H -l'                        # show available disk space
alias copy='pbcopy'
alias paste='pbpaste'
alias zshrc='subl ~/.zshrc'
alias copyjson='paste | tojson | copy'


# Quick way to rebuild the Launch Services database and get rid of duplicates in the Open With submenu.
alias fixopenwith='/System/Library/Frameworks/CoreServices.framework/Frameworks/LaunchServices.framework/Support/lsregister -kill -r -domain local -domain system -domain user | killall Finder'

function ccd () { mkdir -p $1 && cd $1; }       # create and change dir
function title () { echo -en "\033]2;$1\007"; } # set terminal title

# git
function gca {
    git add .
    git commit -m "$1"
    git push
}

alias gs='git status'
alias gaa='git add .'
alias gp='git push'


function googlebot() { echo "Mozilla/5.0 (compatible; Googlebot/2.1; +http://www.google.com/bot.html)" }
function useragent() { echo "Mozilla/5.0 (Macintosh; Intel Mac OS X 10_9_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/31.0.1650.34 Safari/537.36" }
function clone-template() { git clone git@github.com:orrsella/scala-template.git }

function startelastic() { elasticsearch -f -D es.config=/usr/local/opt/elasticsearch/config/elasticsearch.yml }