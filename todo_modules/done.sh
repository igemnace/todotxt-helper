#!/usr/bin/env bash

# This file is part of Todo.txt Helper.
# Copyright (C) 2017 Ian Emnace

# This program is free software: you can redistribute it and/or modify
# it under the terms of the GNU General Public License as published by
# the Free Software Foundation, either version 3 of the License, or
# (at your option) any later version.

# This program is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
# GNU General Public License for more details.

# You should have received a copy of the GNU General Public License
# along with this program.  If not, see <http://www.gnu.org/licenses/>.

todo_modules_path="$(dirname "$BASH_SOURCE")"

if [[ $1 == "" ]]; then
  $todo_modules_path/list.sh
  read -p "id of done: " id
elif [[ $1 == "--fzf" ]]; then
  # TODO: solve color hardcoding problem
  id="$(nl -w1 -s": " $HOME/todo.txt | grep -v "[0-9]\+\W\+x " | FZF_DEFAULT_OPTS='--no-bold --color=fg:7,fg+:3,bg:-1,bg+:-1,hl:5,hl+:5,prompt:8,pointer:3,marker:2' fzf | cut -f 1 -d ":")"
else
  id="$1"
fi

if [[ $id != "" ]]; then
  sed -i -e "${id}s/^/x $(date -Idate) /" "$HOME/todo.txt"
else
  2>&1 echo "invalid id"
  exit 1
fi

exit 0
