These are my config files.

# my_config_files

- [my\_config\_files](#my_config_files)
  - [1. my\_clion\_setting.zip](#1-my_clion_settingzip)
    - [how to use it](#how-to-use-it)
  - [2. rvctools.zip](#2-rvctoolszip)
    - [how to use it](#how-to-use-it-1)
  - [3. .zshrc](#3-zshrc)
    - [how to use it](#how-to-use-it-2)
  - [4. tmux](#4-tmux)
    - [how to use it](#how-to-use-it-3)
  - [5. vim](#5-vim)
    - [how to use `.vimrc`](#how-to-use-vimrc)
    - [how to use `.ideavimrc`](#how-to-use-ideavimrc)


## 1. my_clion_setting.zip

It's my clion settings

### how to use it

- open clion --> File --> improt setting 
Select the .zip file and open it.
- select the `my_vscode_keymap` in keymap setting

Attention: For windows user, the path of the keymap.xml is different. So users need to modify it manually.

## 2. rvctools.zip

It's a MATLAB robotics toolbox.

reference: [https://petercorke.com/toolboxes/robotics-toolbox/](https://petercorke.com/toolboxes/robotics-toolbox/)

### how to use it

set path --> add with subfolders 

Select the `rvctools` folder

## 3. .zshrc

It's my `.zshrc` file with many custom configuration including git, ROS, terminal, etc.

```bash
sudo apt install fasd
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
```

### how to use it

```bash
ln -s /home/wang/wang/git_files/my_config_files/zsh/.zshrc /home/wang/.zshrc
```

## 4. tmux

It's my `.tmux.conf` file with many custom configuration including plugins, etc.

```bash
git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm # 安装插件管理器
```

### how to use it

```bash
ln -s /home/wang/wang/git_files/my_config_files/tmux/.tmux.conf /home/wang/.tmux.conf
tmux new -s test
```
> `prefix+I`安装插件


## 5. vim

These are my `.vimrc` and `.ideavimrc` file with many custom configuration including plugins, etc.

### how to use `.vimrc`

```bash
# 配置插件管理器
curl -fLo ~/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

ln -s /home/wang/wang/git_files/my_config_files/vim/.vimrc /home/wang/.vimrc

# 检查是否支持clipboard
vim --version | grep clipboard # 已经支持时其前有+号

  # 如果不支持需要安装vim-gtk
sudo apt install vim-gtk
```
> 安装插件 `:PlugInstall`
> 查看插件状态`:PlugStatus`

### how to use `.ideavimrc`

复制替换`.ideavimrc`即可




