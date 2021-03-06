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

if [[ $1 == "-p" || $1 == "--prompt" ]]; then
  read -p "search for todos: " keyword
elif [[ $1 == "-t" || $1 == "--today" ]]; then
  keyword="due:$(date -Idate)"
else
  keyword="$1"
fi

nl -w1 -s": " $HOME/todo.txt | grep -v "[0-9]\+\W\+x " | grep --color "$keyword"
exit 0
