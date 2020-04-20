#!/bin/sh

tmux new-session -d -s foo 'sh start-lighthouse.sh'
tmux split-window -v -t 0 'sleep 1 && sh start-validator.sh'
tmux split-window -v -t 1 'sleep 2 && sh start-imp.sh && sleep 2'
tmux split-window -v -t 1 'sleep 3 && sh start-imp.sh && sleep 2'
tmux select-layout tile
tmux rename-window 'the dude abides'
tmux attach-session -d
