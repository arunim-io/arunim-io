autoload -U bashcompinit
bashcompinit

export ZSH="$HOME/.oh-my-zsh"

zstyle ':omz:update' mode auto

plugins=(
	zsh-autocomplete
	zsh-autosuggestions
	you-should-use
	poetry
	supabase
	glab
	colorize
	sudo
	vscode
	yarn
	volta
	composer
	gh
	web-search
	docker-compose
	zsh-syntax-highlighting
)

source $ZSH/oh-my-zsh.sh

eval "$(register-python-argcomplete pipx)"

source ~/.aliases.zsh

eval EAS_AC_ZSH_SETUP_PATH=/home/maxelite/.cache/eas-cli/autocomplete/zsh_setup && test -f $EAS_AC_ZSH_SETUP_PATH && source $EAS_AC_ZSH_SETUP_PATH # eas autocomplete setup

export VOLTA_HOME="$HOME/.volta"
export PATH="$VOLTA_HOME/bin:$PATH"
export PATH="$PATH:/var/lib/snapd/snap/bin/"
export PATH="$PATH":"$HOME/.pub-cache/bin"
export PATH="$PATH":"$HOME/Android/Sdk/platform-tools"
export PATH="$PATH":"$HOME/Android/Sdk/cmdline-tools/latest/bin"
export PATH="$PATH":"$HOME/Android/Sdk/tools"
export ANDROID_SDK_ROOT="$HOME/Android/Sdk"
export JAVA_HOME="/usr/lib/jvm/default"
export CHROME_EXECUTABLE='/usr/bin/google-chrome-stable'
export PATH="$PATH:$HOME/.rvm/bin"
export PATH="$HOME/.yarn/bin:$HOME/.config/yarn/global/node_modules/.bin:$PATH"
export PNPM_HOME="$HOME/.local/share/pnpm"
export PATH="$PNPM_HOME:$PATH"

screenfetch
eval $(dircolors ~/.dir_colors)
eval "$(starship init zsh)"
