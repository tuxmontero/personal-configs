# change the prefix from 'C-b' to 'C-a'
# (remap capslock to CTRL for easy access)
unbind C-b
set -g prefix 'C-\'
bind 'C-\' send-prefix

# start with window 1 (instead of 0)
set -g base-index 1

# start with pane 1
set -g pane-base-index 1

# split panes using | and -, make sure they open in the same path
bind | split-window -h -c "#{pane_current_path}"
bind - split-window -v -c "#{pane_current_path}"

unbind '"'
unbind %

# open new windows in the current path
bind c new-window -c "#{pane_current_path}"

# reload config file
bind r source-file ~/.tmux.conf

unbind p
bind p previous-window

# shorten command delay
set -sg escape-time 1

# don't rename windows automatically
set -g allow-rename off

# mouse control (clickable windows, panes, resizable panes)
set -g mouse on

# Use Alt-arrow keys without prefix key to switch panes
bind -n M-Left select-pane -L
bind -n M-Right select-pane -R
bind -n M-Up select-pane -U
bind -n M-Down select-pane -D

# enable vi mode keys
set-window-option -g mode-keys vi

# set default terminal mode to 256 colors
set -g default-terminal "screen-256color"

# present a menu of URLs to open from the visible pane. sweet.
bind u capture-pane \;\
    save-buffer /tmp/tmux-buffer \;\
    split-window -l 10 "urlview /tmp/tmux-buffer"


######################
### DESIGN CHANGES ###
######################

# loud or quiet?
set -g visual-activity off
set -g visual-bell off
set -g visual-silence off
setw -g monitor-activity off
set -g bell-action none

#  modes
setw -g clock-mode-colour colour5
setw -g mode-style 'fg=colour1 bg=colour18 bold'

# panes
set -g pane-border-style 'fg=colour19 bg=colour0'
set -g pane-active-border-style 'bg=colour0 fg=colour5'

# statusbar
set -g status-position bottom
set -g status-justify left
set -g status-style 'bg=colour18 fg=colour4'
set -g status-left ''
set -g status-right '#[fg=colour18,bg=colour4] %d/%m #[fg=colour4,bg=colour18] %H:%M:%S '
set -g status-right-length 50
set -g status-left-length 20

setw -g window-status-current-style 'fg=colour1 bg=colour19 bold'
setw -g window-status-current-format ' #I #[fg=colour7]#W#[fg=colour8]#F '

setw -g window-status-style 'fg=colour1 bg=colour18 dim'
setw -g window-status-format ' #I #[fg=colour250]#W#[fg=colour244]#F '

setw -g window-status-bell-style 'fg=colour255 bg=colour1 bold'

# messages
set -g message-style 'fg=colour18 bg=colour4 bold'

