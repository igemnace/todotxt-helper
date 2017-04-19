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

# take note of the literal tabs (^I) for the actions
actions_text="ACTIONS

add	add a new todo item
ls	list todos
ctx	list contexts
proj	list projects
done	mark a todo as done
help	print this usage text

Try 'todo help <action>' for more information on each action."

todo_usage_text="Usage: todo ACTION [OPTIONS]

$actions_text"

no_action_text="Unknown action: $1

$actions_text"


add_usage_text="Usage: todo add [TODO]

Adds a single todo item to todo.txt.

If the TODO argument is not provided, the program will prompt for a todo item."

list_usage_text="Usage: todo ls [FLAG] [PATTERN]

Lists todo items in todo.txt.

If the optional PATTERN argument is provided, the todo items will be grepped.
This can be used to filter contexts or projects.

FLAGS

-p, --prompt	prompt for a pattern
-t, --today	list all items due today"

ctx_usage_text="Usage: todo ctx

Lists all contexts currently in todo.txt."

proj_usage_text="Usage: todo proj

Lists all projects currently in todo.txt."

done_usage_text="Usage: todo done [--fzf] [ID]

Marks a single todo item as done in todo.txt.

If the ID argument is not provided, the program will prompt for one.
Todo items will also be listed for reference.

If the --fzf flag is provided, fzf will be used to select a todo item."

case $1 in
  "add")
    echo "$add_usage_text"
    ;;
  "ls")
    echo "$list_usage_text"
    ;;
  "ctx")
    echo "$ctx_usage_text"
    ;;
  "proj")
    echo "$proj_usage_text"
    ;;
  "done")
    echo "$done_usage_text"
    ;;
  "")
    echo "$todo_usage_text"
    ;;
  *)
    echo "$no_action_text"
    exit 1
esac
exit 0
