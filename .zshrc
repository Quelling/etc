# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile 
HISTSIZE=9999999999999999999999999999999999
SAVEHIST=$HISTSIZE

bindkey -e # emacs keys
bindkey '\ef' emacs-forward-word
bindkey '\eb' emacs-backward-word

autoload -U colors && colors
autoload compinit && compinit
zstyle ':completion:*' menu select # tab comp

autoload -U promptinit
promptinit
prompt newfade yellow

#PS1="%{$fg[red]%}%n%{$reset_color%}@%{$fg[blue]%}%m %{$fg[yellow]%}%~ %{$reset_color%}%% " # first line
#PS2='[\u@\h \W]\$ ' # second line

#aliyasi dlya prilozheniy

alias Syu='yaourt -Syu --aur --ignore bitwig-studio --ignore ppsspp-git --noconfirm' 

alias ls='ls --color=auto'
alias aFlh='ls -aFlh'
alias DU='du -sh ./.* ./*'
alias rcp='rsync -aPWh'
alias ZSHRC='emacs -nw ~/.zshrc'

alias RT='cd ~/rtorrent'
alias DW='cd ~/Downloads'

alias STEAMWINE='env WINEPREFIX=/home/john/.wineprefix/steam/ wine ~/.wineprefix/steam/drive_c/Program\ Files\ \(x86\)/Steam/Steam.exe'
alias STEAMWINEKILL='env WINEPREFIX=/home/john/.wineprefix/steam/ wineserver --k'
alias STEAMWINE32='env WINEPREFIX=/home/john/.wineprefix/steam32etot/ wine ~/.wineprefix/steam32etot/drive_c/Program\ Files/Steam/Steam.exe'
alias STEAMWINE32KILL='env WINEPREFIX=/home/john/.wineprefix/steam32etot/ wineserver --k'
alias GR='env WINEPREFIX=/home/john/.wineprefix/g2 wine ~/.wineprefix/g2/drive_c/Program\ Files/Native\ Instruments/Guitar\ Rig\ 5/Guitar\ Rig\ 5.exe'
alias TUNER='cd .wine/drive_c/Program\ Files\ \(x86\)/AP\ Tuner/AP\ Tuner\ 3.08 && wine tuner.exe'
alias STEAMENG='export LANG=en_US.UTF-8 && steam'
alias enw='emacs -nw'
alias gyazo='gyazo | xclip -selection clipboard'
alias HAMACHI='systemctl start logmein-hamachi.service'
alias Prtorrent='http_proxy="px1.blockme.site:23128" rtorrent'

alias update-grub='sudo grub-mkconfig -o /boot/grub/grub.cfg'
alias shutdown='shutdown now'
