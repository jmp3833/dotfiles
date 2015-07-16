fortune | cowsay
#256 color terminal for Vim
if [ -e /usr/share/terminfo/x/xterm-256color ]; then
        export TERM='xterm-256color'
else
        export TERM='xterm-color'
fi

function setjdk() {
  if [ $# -ne 0 ]; then
   removeFromPath '/System/Library/Frameworks/JavaVM.framework/Home/bin'
   if [ -n "${JAVA_HOME+x}" ]; then
    removeFromPath $JAVA_HOME
   fi
   export JAVA_HOME=`/usr/libexec/java_home -v $@`
   export PATH=$JAVA_HOME/bin:$PATH
  fi
 }
 function removeFromPath() {
  export PATH=$(echo $PATH | sed -E -e "s;:$1;;" -e "s;$1:?;;")
 }

 ##
# Your previous /Users/jpeterson6/.bash_profile file was backed up as /Users/jpeterson6/.bash_profile.macports-saved_2015-02-03_at_16:31:39
##

# MacPorts Installer addition on 2015-02-03_at_16:31:39: adding an appropriate PATH variable for use with MacPorts.
export PATH="/opt/local/bin:/opt/local/sbin:$PATH"
# Finished adapting your PATH environment variable for use with MacPorts.

#Mvn options
export MAVEN_OPTS="-Xms1024m -Xmx4096m -XX:PermSize=1024m"

#Android Options
export ANDROID_HOME="/Users/jpeterson6/Library/Android/sdk" 

alias vim='/usr/bin/mvim -v'

#Bash completion for git
source ~/.github_completion.sh
