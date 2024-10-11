if status is-interactive
    # Commands to run in interactive sessions can go here
end
set --erase fish_greeting
export PATH=/usr/bin/:/usr/local/bin/:/usr/cuda/bin/


export PYTHONPATH=/usr/lib/python3.11/
export PYTHONHOME=/usr
#export NEMU_HOME=/home/mland/my/ysyx-workbench/nemu
export YSYX_HOME=/home/mland/ysyx-workbench
export NEMU_HOME=/home/mland/ysyx-workbench/nemu
export NPC_HOME=/home/mland/ysyx-workbench/npc
export AM_HOME=/home/mland/ysyx-workbench/abstract-machine
#export AM_HOME=/home/mland/my/ysyx-workbench/abstract-machine
#export NEMU_HOME=/home/mland/my/ics2022/nemu
#export AM_HOME=/home/mland/my/ics2022/abstract-machine
#export NPC_HOME=/home/mland/my/ysyx-workbench/npc
export NVBOARD_HOME=/home/mland/ysyx-workbench/nvboard
export NAVY_HOME=/home/mland/ysyx-workbench/navy-apps
#export NVBOARD_HOME=/home/mland/my/ysyx/nvboard
export LANG=zh_CN.UTF-8
export LANGUAGE=zh_CN:en_US
export OS_HOME=/home/mland/os
export MAKEFLAGS="-j$(nproc)"
#export NVM_DIR="$HOME/.nvm"
#[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
#[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
#export http_proxy="http://127.0.0.1:7890"

export OBJCACHE=ccache
function proxy
  set -xg http_proxy http://127.0.0.1:7890
  set -xg https_proxy https://127.0.0.1:7891
end

function noproxy
  set -e http_proxy
  set -e https_proxy
end

#export https_proxy="https://127.0.0.1:7891"
#export https_proxy = "socks5://127.0.0.1:7891"
#export https_proxy=
#export http_proxy=
# Aliases
abbr -a rv64gdb riscv64-unknown-elf-gdb
abbr -a rv64obj riscv64-unknown-elf-objdump
abbr -a qrv64 qemu-riscv64
abbr -a rv64gcc riscv64-unknown-elf-gcc

function m
  make $argv
end
function mr
  make run
end
function mc
  make clean
end
function ga
  git add .
end
function gc
  git commit $argv
end
function gp
  git push origin main
end
function gcp
  git add .
  git commit -m $argv
  git push origin main
end
function v
  nvim $argv
end
function gs
  git status
end
function gl
  git log
end
function glt
  git log tracer-ysyx
end
function ..
  cd ..
end
function s
  ssh -o ServerAliveInterval=60 $argv
end
function dc
  cd $argv
end
