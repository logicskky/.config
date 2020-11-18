# 我的配置文件

[我的 NeoVim 配置](https://github.com/logicskky/nvim)  
[我的 dwm 配置](https://github.com/logicskky/dwm)  
[我的 st 配置](https://github.com/logicskky/st)  
[我的 dmenu 配置](https://github.com/logicskky/dmenu)  
[我的 Emacs 配置(I am using Vim now.)](https://github.com/logicskky/.emacs.d)

---

<!-- vim-markdown-toc GFM -->

* [Fcitx5](#fcitx5)
* [Ranger](#ranger)
* [Zsh](#zsh)
    * [需要的软件](#需要的软件)
        * [`zinit` 自动安装](#zinit-自动安装)
        * [`zinit` 手动安装](#zinit-手动安装)
        * [`the_silver_searcher` 安装](#the_silver_searcher-安装)
        * [`thefuck` 安装](#thefuck-安装)
    * [（可能）常用的命令](#可能常用的命令)
* [字体](#字体)

<!-- vim-markdown-toc -->

首先，克隆我的配置文件：

```zsh
git clone https://github.com/logicskky/.config.git
```

## Fcitx5

安装：

- `fcitx5`
- `fcitx5-chinese-addons`
- `fcitx5-gtk`
- `fcitx5-qt`
- `fcitx5-material-color`
- `fcitx5-pinyin-moegirl`
- `fcitx5-pinyin-zhwiki`

在 `~/.xprofile` 中添加：

```zsh
export QT_IM_MODULE=fcitx5
export GTK_IM_MODULE=fcitx5
export XMODIFIERS=@im=fcitx5
```

Fcitx5 的用户需要把第一个输入法设置为 `Keyboard - layout`。

## Ranger

安装：`ranger` 和 `ueberzug`（用于预览图片）。  
安装：[ranger_devicons](https://github.com/alexanderjeurissen/ranger_devicons) 这个插件。  

## Zsh

### 需要的软件

- `zinit`
- `the_silver_searcher`
- `thefuck`

#### `zinit` 自动安装

```
sh -c "$(curl -fsSL https://raw.githubusercontent.com/zdharma/zinit/master/doc/install.sh)"
```

#### `zinit` 手动安装

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

#### `the_silver_searcher` 安装

```zsh
sudo pacman -S the_silver_searcher
```

#### `thefuck` 安装

```zsh
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

我使用的字体为 `等距更纱黑体 SC` 和 `Nerd-Fonts`。

