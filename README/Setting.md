# 美化

## iTerm2 + OhMyZsh + agnoster + Powerline + solarized

### 1. 准备工作

#### iTerm2

``` bash
brew install iterm2
```

#### Powerline

``` bash
git clone https://github.com/powerline/fonts.git &&
 cd fonts/ &&
 ./install.sh
```

#### Oh My Zsh

``` sh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
chsh -s /bin/zsh
```

#### Solarized

``` bash
git clone git://github.com/altercation/solarized.git &&
 cd solarized &&
 cd iterm2-colors-solarized/ &&
 open Solarized\ Dark.itermcolors
```

### 2. 开始吧~

#### 设置 iTerm2 的 Color 和 Font

iTerm2 -> Preferences -> Profiles -> Colors -> Color Presets -> `Solarized Dark`

iTerm2 -> Preferences -> Profiles -> Text -> Font/Change Font -> `搜索 powerline 后根据需求随意选一个`

#### 设置 Oh My ZSH 的主题

``` bash
vim ~/.zshrc
```

ZSH_THEME 的值改为 ZSH_THEME="agnoster"
