# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.

# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH



# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"
export LC_ALL="en_IN.UTF-8"
export PYTHONPATH="/usr/bin/python3"


# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes

# ZSH_THEME="bira"
 

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
zstyle ':omz:update' frequency 7



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
 COMPLETION_WAITING_DOTS="true"



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
# Example format: plugins=(rails git textmate ruby lhighhighthouse)
# Add wisely, as too many plugins slow down shell startup.
 plugins=(
 	  git
	  fzf
	  colored-man-pages
	  colorize
	  zsh-interactive-cd
	  python
#	  adb
	  fast-syntax-highlighting
#	  zsh-syntax-highlighting
	  zsh-autosuggestions
	  starship
	  magic-enter
	  kitty
  )


# Source oh-my-zsh script
source $ZSH/oh-my-zsh.sh


### User configuration

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
#
#### Aliases
# Pacman aliases
 alias unlock="sudo rm /var/lib/pacman/db.lck"		# remove pacman lock
 alias cleanup='sudo pacman -Rns $(pacman -Qtdq)'	# remove orphaned packages
 alias search='yay -Ss'					# Search for packages
 alias up='yay -Syu'					# update system
# Grub aliases
 alias update-grub='sudo grub-mkconfig -o /boot/grub/grub.cfg'                          # update grub shorthand
# Changing "ls" to "eza"
 alias ll='eza -al --icons --group-directories-first --git --time-style=relative --no-filesize --color=always --color-scale' 	# my preferred listing
 alias la='eza -a --icons --group-directories-first --git --time-style=relative --no-filesize --color=always --color-scale'  	# all files and dirs
 alias ls='eza -l --icons --group-directories-first --git --time-style=relative --no-filesize --color=always --color-scale'  	# long format
 alias l.='eza -a --color=always | grep -E "^\."'
# Colorize grep output (good for log files)
 alias grep='grep --color=auto'		# add colors to grep
 alias egrep='egrep --color=auto'	# add colors to egrep
 alias fgrep='fgrep --color=auto'	# add colors to fgrep
# cp, mv & rm aliases
 alias mv='mv -iv'							# Add and verbose
 alias rm='rm -if'							# Add promt and forcefully flag
 alias cp="rsync -avh --inplace --no-whole-file --info=progress2" 	# Change cp with rsync
# Extra aliases
 alias date='date "+%d-%b-%Y %I:%M %p"'
 alias p10kup='git -C ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k pull' # to update powerlevel10k
 alias py='python3'                                                                     # python
 alias free='free -m'                                 					# show sizes in MB
 alias cat='bat --theme Dracula --italic-text always --style "header-filename,header-filesize,grid" ' 					# run cat -> bat with arguments
 alias cmatrix='cxxmatrix -m FOSSIL --frame-rate=30 --rain-density=2.0'                 # advance cmatrix
 alias df='dust -pr'									# use dust instead of df
 alias neofetch='fastfetch'
 alias aws-test='aws sts get-caller-identity'
# system power aliases
 alias srn='shutdown -r now'                          	# reboot
 alias shn='shutdown now'                             	# shutdown
 alias tf='terraform '					# terraform
# Service aliases
 alias start='sudo systemctl start '
 alias restart='sudo systemctl restart '
 alias stop='sudo systemctl stop '
 alias status='sudo systemctl status '
 alias enable='sudo systemctl enable '
 alias disable='sudo systemctl disable '

 alias bc='eva'
 alias gitfetch='onefetch'
 alias docker-ui='oxker'
 alias tree='tre'
 alias st='systemctl-tui'
# End of File

# Created by `pipx` on 2023-07-10 11:48:21
export PATH="$PATH:/home/fossil/.local/bin"

eval "$(atuin init zsh)"

function yy() {
	local tmp="$(mktemp -t "yazi-cwd.XXXXXX")"
	yazi "$@" --cwd-file="$tmp"
	if cwd="$(cat -- "$tmp")" && [ -n "$cwd" ] && [ "$cwd" != "$PWD" ]; then
		cd -- "$cwd"
	fi
	rm -f -- "$tmp"
}
#compdef influx

_cli_zsh_autocomplete() {
    local -a opts
    local cur
    cur=${words[-1]}
    if [[ "$cur" == "-"* ]]; then
        opts=("${(@f)$(_CLI_ZSH_AUTOCOMPLETE_HACK=1 ${words[@]:0:#words[@]-1} ${cur} --generate-bash-completion)}")
    else
        opts=("${(@f)$(_CLI_ZSH_AUTOCOMPLETE_HACK=1 ${words[@]:0:#words[@]-1} --generate-bash-completion)}")
    fi

    if [[ "${opts[1]}" != "" ]]; then
        _describe 'values' opts
    else
        _files
    fi

    return
}

compdef _cli_zsh_autocomplete influx

#cowfortune
#compdef yq
compdef _yq yq

# zsh completion for yq                                   -*- shell-script -*-

__yq_debug()
{
    local file="$BASH_COMP_DEBUG_FILE"
    if [[ -n ${file} ]]; then
        echo "$*" >> "${file}"
    fi
}

_yq()
{
    local shellCompDirectiveError=1
    local shellCompDirectiveNoSpace=2
    local shellCompDirectiveNoFileComp=4
    local shellCompDirectiveFilterFileExt=8
    local shellCompDirectiveFilterDirs=16
    local shellCompDirectiveKeepOrder=32

    local lastParam lastChar flagPrefix requestComp out directive comp lastComp noSpace keepOrder
    local -a completions

    __yq_debug "\n========= starting completion logic =========="
    __yq_debug "CURRENT: ${CURRENT}, words[*]: ${words[*]}"

    # The user could have moved the cursor backwards on the command-line.
    # We need to trigger completion from the $CURRENT location, so we need
    # to truncate the command-line ($words) up to the $CURRENT location.
    # (We cannot use $CURSOR as its value does not work when a command is an alias.)
    words=("${=words[1,CURRENT]}")
    __yq_debug "Truncated words[*]: ${words[*]},"

    lastParam=${words[-1]}
    lastChar=${lastParam[-1]}
    __yq_debug "lastParam: ${lastParam}, lastChar: ${lastChar}"

    # For zsh, when completing a flag with an = (e.g., yq -n=<TAB>)
    # completions must be prefixed with the flag
    setopt local_options BASH_REMATCH
    if [[ "${lastParam}" =~ '-.*=' ]]; then
        # We are dealing with a flag with an =
        flagPrefix="-P ${BASH_REMATCH}"
    fi

    # Prepare the command to obtain completions
    requestComp="${words[1]} __complete ${words[2,-1]}"
    if [ "${lastChar}" = "" ]; then
        # If the last parameter is complete (there is a space following it)
        # We add an extra empty parameter so we can indicate this to the go completion code.
        __yq_debug "Adding extra empty parameter"
        requestComp="${requestComp} \"\""
    fi

    __yq_debug "About to call: eval ${requestComp}"

    # Use eval to handle any environment variables and such
    out=$(eval ${requestComp} 2>/dev/null)
    __yq_debug "completion output: ${out}"

    # Extract the directive integer following a : from the last line
    local lastLine
    while IFS='\n' read -r line; do
        lastLine=${line}
    done < <(printf "%s\n" "${out[@]}")
    __yq_debug "last line: ${lastLine}"

    if [ "${lastLine[1]}" = : ]; then
        directive=${lastLine[2,-1]}
        # Remove the directive including the : and the newline
        local suffix
        (( suffix=${#lastLine}+2))
        out=${out[1,-$suffix]}
    else
        # There is no directive specified.  Leave $out as is.
        __yq_debug "No directive found.  Setting do default"
        directive=0
    fi

    __yq_debug "directive: ${directive}"
    __yq_debug "completions: ${out}"
    __yq_debug "flagPrefix: ${flagPrefix}"

    if [ $((directive & shellCompDirectiveError)) -ne 0 ]; then
        __yq_debug "Completion received error. Ignoring completions."
        return
    fi

    local activeHelpMarker="_activeHelp_ "
    local endIndex=${#activeHelpMarker}
    local startIndex=$((${#activeHelpMarker}+1))
    local hasActiveHelp=0
    while IFS='\n' read -r comp; do
        # Check if this is an activeHelp statement (i.e., prefixed with $activeHelpMarker)
        if [ "${comp[1,$endIndex]}" = "$activeHelpMarker" ];then
            __yq_debug "ActiveHelp found: $comp"
            comp="${comp[$startIndex,-1]}"
            if [ -n "$comp" ]; then
                compadd -x "${comp}"
                __yq_debug "ActiveHelp will need delimiter"
                hasActiveHelp=1
            fi

            continue
        fi

        if [ -n "$comp" ]; then
            # If requested, completions are returned with a description.
            # The description is preceded by a TAB character.
            # For zsh's _describe, we need to use a : instead of a TAB.
            # We first need to escape any : as part of the completion itself.
            comp=${comp//:/\\:}

            local tab="$(printf '\t')"
            comp=${comp//$tab/:}

            __yq_debug "Adding completion: ${comp}"
            completions+=${comp}
            lastComp=$comp
        fi
    done < <(printf "%s\n" "${out[@]}")

    # Add a delimiter after the activeHelp statements, but only if:
    # - there are completions following the activeHelp statements, or
    # - file completion will be performed (so there will be choices after the activeHelp)
    if [ $hasActiveHelp -eq 1 ]; then
        if [ ${#completions} -ne 0 ] || [ $((directive & shellCompDirectiveNoFileComp)) -eq 0 ]; then
            __yq_debug "Adding activeHelp delimiter"
            compadd -x "--"
            hasActiveHelp=0
        fi
    fi

    if [ $((directive & shellCompDirectiveNoSpace)) -ne 0 ]; then
        __yq_debug "Activating nospace."
        noSpace="-S ''"
    fi

    if [ $((directive & shellCompDirectiveKeepOrder)) -ne 0 ]; then
        __yq_debug "Activating keep order."
        keepOrder="-V"
    fi

    if [ $((directive & shellCompDirectiveFilterFileExt)) -ne 0 ]; then
        # File extension filtering
        local filteringCmd
        filteringCmd='_files'
        for filter in ${completions[@]}; do
            if [ ${filter[1]} != '*' ]; then
                # zsh requires a glob pattern to do file filtering
                filter="\*.$filter"
            fi
            filteringCmd+=" -g $filter"
        done
        filteringCmd+=" ${flagPrefix}"

        __yq_debug "File filtering command: $filteringCmd"
        _arguments '*:filename:'"$filteringCmd"
    elif [ $((directive & shellCompDirectiveFilterDirs)) -ne 0 ]; then
        # File completion for directories only
        local subdir
        subdir="${completions[1]}"
        if [ -n "$subdir" ]; then
            __yq_debug "Listing directories in $subdir"
            pushd "${subdir}" >/dev/null 2>&1
        else
            __yq_debug "Listing directories in ."
        fi

        local result
        _arguments '*:dirname:_files -/'" ${flagPrefix}"
        result=$?
        if [ -n "$subdir" ]; then
            popd >/dev/null 2>&1
        fi
        return $result
    else
        __yq_debug "Calling _describe"
        if eval _describe $keepOrder "completions" completions $flagPrefix $noSpace; then
            __yq_debug "_describe found some completions"

            # Return the success of having called _describe
            return 0
        else
            __yq_debug "_describe did not find completions."
            __yq_debug "Checking if we should do file completion."
            if [ $((directive & shellCompDirectiveNoFileComp)) -ne 0 ]; then
                __yq_debug "deactivating file completion"

                # We must return an error code here to let zsh know that there were no
                # completions found by _describe; this is what will trigger other
                # matching algorithms to attempt to find completions.
                # For example zsh can match letters in the middle of words.
                return 1
            else
                # Perform file completion
                __yq_debug "Activating file completion"

                # We must return the result of this command, so it must be the
                # last command, or else we must store its result to return it.
                _arguments '*:filename:_files'" ${flagPrefix}"
            fi
        fi
    fi
}

# don't run the completion function when being source-ed or eval-ed
if [ "$funcstack[1]" = "_yq" ]; then
    _yq
fi
#compdef genact

autoload -U is-at-least

_genact() {
    typeset -A opt_args
    typeset -a _arguments_options
    local ret=1

    if is-at-least 5.2; then
        _arguments_options=(-s -S -C)
    else
        _arguments_options=(-s -C)
    fi

    local context curcontext="$curcontext" state line
    _arguments "${_arguments_options[@]}" \
'*-m+[Run only these modules]:MODULES:(ansible bootlog botnet bruteforce cargo cc composer cryptomining docker_build docker_image_rm download julia kernel_compile memdump mkinitcpio rkhunter simcity terraform weblog)' \
'*--modules=[Run only these modules]:MODULES:(ansible bootlog botnet bruteforce cargo cc composer cryptomining docker_build docker_image_rm download julia kernel_compile memdump mkinitcpio rkhunter simcity terraform weblog)' \
'-s+[Global speed factor]:SPEED_FACTOR: ' \
'--speed-factor=[Global speed factor]:SPEED_FACTOR: ' \
'-i+[Instantly print this many lines]:INSTANT_PRINT_LINES: ' \
'--instant-print-lines=[Instantly print this many lines]:INSTANT_PRINT_LINES: ' \
'--exit-after-time=[Exit after running for this long (format example\: 2h10min)]:EXIT_AFTER_TIME: ' \
'--exit-after-modules=[Exit after running this many modules]:EXIT_AFTER_MODULES: ' \
'--print-completions=[Generate completion file for a shell]:shell:(bash elvish fish powershell zsh)' \
'-l[List available modules]' \
'--list-modules[List available modules]' \
'--print-manpage[Generate man page]' \
'-h[Print help]' \
'--help[Print help]' \
'-V[Print version]' \
'--version[Print version]' \
&& ret=0
}

(( $+functions[_genact_commands] )) ||
_genact_commands() {
    local commands; commands=()
    _describe -t commands 'genact commands' commands "$@"
}

if [ "$funcstack[1]" = "_genact" ]; then
    _genact "$@"
else
    compdef _genact genact
fi
