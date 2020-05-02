# 我的配置文件

这个配置文件里有 `i3` 和 `alacritty` 的配置，但我现在在使用 [dwm](https://github.com/LogicSkky/my-dwm) 和 [st](https://github.com/LogicSkky/my-st)。  

我的 `dmenu` 的配置在 [这里](https://github.com/LogicSkky/my-dmenu)。  

我的 `NeoVim` 配置在 [这里](https://github.com/LogicSkky/my-neovim)。  

<!-- vim-markdown-toc GFM -->

* [Fcitx](#fcitx)
* [Ranger](#ranger)
* [Zsh](#zsh)
    * [安装](#安装)
        * [自动安装](#自动安装)
        * [手动安装](#手动安装)
        * [其他软件](#其他软件)
    * [（可能）常用的命令](#可能常用的命令)
* [字体](#字体)
* [我所安装的软件](#我所安装的软件)

<!-- vim-markdown-toc -->

首先，克隆我的配置文件：

```
git clone https://github.com/LogicSkky/my-dotfiles.git
```

## Fcitx

安装：`fcitx`、`fcitx-im`、`fcitx-configtool`、`fcitx-rime`。

在 `~/.xprofile` 中添加：

```
export QT_IM_MODULE=fcitx
export GTK_IM_MODULE=fcitx
export XMODIFIERS=@im=fcitx
```

Fcitx 的用户需要把第一个输入法设置为 `Keyboard - layout`。

## Ranger

安装：`ranger` 和 `ueberzug`（用于预览图片）。  
安装：[ranger_devicons](https://github.com/alexanderjeurissen/ranger_devicons) 这个插件。  

## Zsh

### 安装

安装 `zinit` 这个插件管理器：

#### 自动安装

```
sh -c "$(curl -fsSL https://raw.githubusercontent.com/zdharma/zinit/master/doc/install.sh)"
```

#### 手动安装

假设把 `zinit` 安装到家目录下。  

首先创建文件夹：

```
mkdir ~/.zinit
```

然后克隆 `zinit`：

```
git clone https://github.com/zdharma/zinit.git ~/.zinit/bin
```

然后让 zsh 引用 `zinit`，在 `.zshrc` 的顶部添加（我的配置文件中已添加该行）：

```
source ~/.zinit/bin/zinit.zsh
```

#### 其他软件

安装 `thefuck` 这个软件：

```
pip install thefuck
```

### （可能）常用的命令

更新 `zinit`：

```
zinit self-update
```

更新插件：

```
zinit update
```

更改 zsh 提示符 `powerlevel10k` 的主题：

```
p10k configure
```

## 字体

我使用的字体为 `Source Code Pro` 和 `Nerd-Fonts`。

## 我所安装的软件

详见 [这里](https://github.com/LogicSkky/my-dotfiles/blob/master/softwareList.txt)。
