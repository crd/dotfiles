#
# Executes commands at the start of an interactive session.
#
# Authors:
#   Sorin Ionescu <sorin.ionescu@gmail.com>
#

# Source Prezto.
if [[ -s "${ZDOTDIR:-$HOME}/.zprezto/init.zsh" ]]; then
  source "${ZDOTDIR:-$HOME}/.zprezto/init.zsh"
fi

# Customize to your needs...

export http_proxy=http://localhost:8098
export https_proxy=$http_proxy
export ftp_proxy=$http_proxy
export rsync_proxy=$http_proxy
export HTTP_PROXY=$http_proxy
export HTTPS_PROXY=$http_proxy

export JAVA_HOME=$(/usr/libexec/java_home)
export JAVA_PROXY="-Dhttp.proxyHost=localhost -Dhttp.proxyPort=8098 -Dhttps.proxyHost=localhost -Dhttps.proxyPort=8098 -Dhttp.nonProxyHosts=localhost -Dhttps.nonProxyHosts=localhost"

export PATH=~/bin/:$PATH

# Unset Proxy
function unsetproxy() {
    unset {http,https,ftp,rsync}_proxy
    unset {HTTP,HTTPS}_PROXY
}

test -e "${HOME}/.iterm2_shell_integration.zsh" && source "${HOME}/.iterm2_shell_integration.zsh"
