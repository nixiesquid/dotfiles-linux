# setting with each os
if test (string match -r 'Linux.*' (uname))
  set -x PATH /usr/local/bin $PATH
  set -x PATH /home/linuxbrew/.linuxbrew/bin $PATH
  # XDG
  set -x XDG_CONFIG_HOME $HOME/.config
  set -x XDG_CASCHE_HOME $HOME/.cache
  # lang
  set -x LANG en_US.UTF8
  # flutter
  set -x PATH /usr/local/flutter/bin $PATH

  zoxide init fish | source

  # kworker's redundant works disable
  echo 'disable' | sudo tee /sys/firmware/acpi/interrupts/gpe06
  echo 'disable' | sudo tee /sys/firmware/acpi/interrupts/gpe17
  # power tuning
  sudo tlp start
  # deactivate plymouth
  sudo plymouth deactivate
else if test (string match -r 'Darwin.*' (uname))
end

# path
# set -x PATH (stack path --local-bin) $PATH
set -x PATH ~/.cargo/bin $PATH
set -x PATH ~/.poetry/bin $PATH

# anyenv
set -x PATH $HOME/.anyenv/bin $PATH
status --is-interactive; and source (anyenv init - | psub)

# nodenv
set -x NODENV_ROOT $HOME/.anyenv/envs/nodenv
set -x PATH $HOME/.anyenv/envs/nodenv/bin $PATH
set -gx PATH $NODENV_ROOT/shims $PATH

# node packages
# TODO: *指定ではなくて、現在のnodeバージョンに応じて切り替える
set -x PATH $HOME/.anyenv/envs/nodenv/versions/*/bin $PATH

# go
set -x PATH /usr/local/go/bin $PATH

# ghq
set -x PATH ~/go/bin $PATH
set -x PATH /snap/bin $PATH

# direnv
# eval (direnv hook fish)