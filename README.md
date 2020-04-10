# 我的配置文件

这个配置文件里有 `i3` 和 `alacritty` 的配置，但我现在在使用 [dwm](https://github.com/LogicSkky/my-dwm) 和 [st](https://github.com/LogicSkky/my-st)。  

我的 `NeoVim` 配置在 [这里](https://github.com/LogicSkky/my-neovim)。

## 重要的基础操作

### Ranger

安装：`ranger` 和 `ueberzug`（用于预览图片）。

### Fcitx

安装：`fcitx`、`fcitx-im`、`fcitx-configtool`、`fcitx-rime`。

在 `~/.xprofile` 中添加：

```
export QT_IM_MODULE=fcitx
export GTK_IM_MODULE=fcitx
export XMODIFIERS=@im=fcitx
```

Fcitx 的用户需要把第一个输入法设置为 `Keyboard - layout`。

### 字体

我使用的字体为 `Source Code Pro` 和 `Nerd-Fonts`。

### 我所安装的软件

详见 [这里](https://github.com/LogicSkky/my-dotfiles/blob/master/softwareList.txt)。
