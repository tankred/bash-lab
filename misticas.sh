#!/bin/sh

# Set Session Name
SESSION="misticas"
SESSIONEXISTS=$(tmux list-sessions | grep $SESSION)

# Only create tmux session if it doesn't already exist
if [ "$SESSIONEXISTS" = "" ]
then
  # Start New Session with our name
  tmux new-session -d -s $SESSION

  # Name first Window and start zsh
  tmux rename-window -t 0 'today'
  tmux split-window -h zsh
  # tmux split-window -v zsh

  # sends keys to first and second terminals
  tmux send -t 0 "cd ~" C-m
  tmux send-keys -t 1 "cd ~/tmp" C-m
  # set focus on pane 0
  tmux select-pane -t 0
fi

# Attach Session, on the Main window
tmux attach-session -t $SESSION:0
