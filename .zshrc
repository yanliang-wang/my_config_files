 export ZSH=~/.oh-my-zsh

# Set name of the theme to load. Optionally, if you set this to "random"
# it'll load a random theme each time that oh-my-zsh is loaded.
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
ZSH_THEME="ys"

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion. Case
# sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# The optional three formats: "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
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

# ssh
# export SSH_KEY_PATH="~/.ssh/rsa_id"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

#####################################################################
# customized configure
#####################################################################
alias p='proxychains4'
alias pytorch='conda activate pytorch'
alias tf1.11='conda activate tf1.8'
alias tf1.10='conda activate tf'
alias smi='nvidia-smi'
alias du1='sudo du -h --max-depth=1 --threshold=500M'
alias tree1='tree -L 1'
alias tree2='tree -L 2'
alias pip2='/usr/bin/pip'
alias -s pdf='okular'
alias cm='catkin_make'
alias cmall='catkin_make -DCATKIN_WHITELIST_PACKAGES=""'
alias refresh='watch -n 0.5 -d'
alias ins='sudo apt-get install'

CZ_INIT_SCRIPT='var p=require("./package.json");p.config=p.config||{};p.config.ghooks={"commit-msg":"validate-commit-msg"};p.scripts=p.scripts||{};p.scripts.changelog="conventional-changelog -p angular -i CHANGELOG.md -s -r 0";require("fs").writeFileSync("./package.json",JSON.stringify(p,null,2)+require("os").EOL);'
alias cz_init="npm init && commitizen init cz-conventional-changelog --save-dev --save-exact && node -e '$CZ_INIT_SCRIPT'"
#####################################################################
# open file configure
#####################################################################
alias -s py='vim'      # 在命令行直接输入 python 文件，会用 vim 中打开，以下类似
alias -s c='vim'
alias -s cpp='vim'
alias -s txt='gedit'

alias -s gz='tar -xzvf' # 在命令行直接输入后缀为 gz 的文件名，会自动解压打开
alias -s tgz='tar -xzvf'
alias -s tar='tar -xzvf'
alias -s zip='unzip'
alias -s rar='unrar x'
alias -s bz2='tar -xjvf'
alias -s md='typora'
alias -s pdf='okular'

alias -s pcd='pcl_viewer'

#####################################################################
# linux shell cmd configure
#####################################################################
alias clc='clear'
alias ll='ls -l'
alias la='ls -a'
alias aptgetinstall='sudo apt-get install'

alias llusb='ll /dev/ttyUSB*'
alias chusb='sudo chmod +777 /dev/ttyUSB*'

alias shutdownnow='sudo shutdown -P 0'

alias openwin='gnome-open'

#####################################################################
# cmake cmd configure
#####################################################################
alias cmakemake='cmake .. && make'
alias cmakefull='mkdir build && cd build && cmake .. && make'

#####################################################################
# git cmd configure
#####################################################################
alias gpush='git push origin master'
alias gst='git status'
alias gdiff='git diff'
alias gcommit='git commit -m'
alias gadd='git add'
alias glog='git log --oneline --decorate --graph --all'

#####################################################################
# zsh configure
#####################################################################
alias sourcezsh='source ~/.zshrc'
alias geditzsh='gedit ~/.zshrc'
source /usr/share/autojump/autojump.zsh


#####################################################################
# ros configure
#####################################################################
# ros tmp cmd
source /opt/ros/melodic/setup.zsh
alias echorospath='echo $ROS_PACKAGE_PATH'
alias sourcerosws='source devel/setup.zsh'
# export  TURTLEBOT_BASE=kobuki  
# export  TURTLEBOT_STACKS=hexagons
# export  TURTLEBOT_3D_SENSOR=KinectVelodyne

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
# __conda_setup="$('/home/wang/anaconda3/bin/conda' 'shell.bash' 'hook' 2> /dev/null)"
# if [ $? -eq 0 ]; then
#     eval "$__conda_setup"
# else
#     if [ -f "/home/wang/anaconda3/etc/profile.d/conda.sh" ]; then
#         . "/home/wang/anaconda3/etc/profile.d/conda.sh"
#     else
#         export PATH="/home/wang/anaconda3/bin:$PATH"
#     fi
# fi

# >>> cuda >>>
# export PATH=/usr/local/cuda-10.1/bin${PATH:+:$PATH}} 
# export LD_LIBRARY_PATH=/usr/local/cuda-10.1/lib64${LD_LIBRARY_PATH:+:${LD_LIBRARY_PATH}}

# set matlab environment 
export PATH=$PATH:/usr/local/Polyspace/R2019b/bin/:/usr/local/Polyspace/R2019b/extern/bin/

export LD_PATH_LIB=/opt/ros/melodic/lib

# >>> ros workspace for public pkg >>>
# source /home/wang/catkin_ws/devel/setup.zsh

