export PYENV_ROOT="$HOME/.pyenv"
export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init --path)"

eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"
FPATH="$(brew --prefix)/share/zsh/site-functions:${FPATH}"

export PATH="$PATH:/var/lib/snapd/snap/bin/"
export PATH="$PATH":"$HOME/.pub-cache/bin"
export PATH="$PATH":"$HOME/Android/Sdk/platform-tools"
export PATH="$PATH":"$HOME/Android/Sdk/cmdline-tools/latest/bin"
export PATH="$PATH":"$HOME/Android/Sdk/tools"

export ANDROID_SDK_ROOT="$HOME/Android/Sdk"
export JAVA_HOME="/usr/lib/jvm/default"
export CHROME_EXECUTABLE='/usr/bin/google-chrome-stable'

export VOLTA_HOME="$HOME/.volta"
export PATH="$VOLTA_HOME/bin:$PATH"
export PATH="$HOME/.yarn/bin:$HOME/.config/yarn/global/node_modules/.bin:$PATH"
export PNPM_HOME="/home/maxelite/.local/share/pnpm"
export PATH="$PNPM_HOME:$PATH"

GPG_TTY=$(tty)
export GPG_TTY
export QT_QPA_PLATFORMTHEME=""

export _JAVA_OPTIONS="-Dawt.useSystemAAFontSettings=on -Dswing.aatext=true -Dswing.defaultlaf=com.sun.java.swing.plaf.gtk.GTKLookAndFeel -Dswing.crossplatformlaf=com.sun.java.swing.plaf.gtk.GTKLookAndFeel ${_JAVA_OPTIONS}"

export BROWSER="/usr/bin/firefox"
