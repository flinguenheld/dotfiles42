#!/usr/bin/env bash

# To get current keybindings:
# gsettings list-recursively

gsettings reset-recursively org.gnome.desktop.wm.keybindings
gsettings reset-recursively org.gnome.shell.keybindings

GSET_DESK="gsettings set org.gnome.desktop.wm.keybindings"
GSET_SHELL="gsettings set org.gnome.shell.keybindings"
GSET_SHELL_EXT="gsettings set org.gnome.shell.extensions.dash-to-dock"
GSET_WAY="gsettings set org.gnome.mutter.wayland.keybindings"
GSET_MEDIA="gsettings set org.gnome.settings-daemon.plugins.media-keys"

$GSET_DESK switch-to-workspace-1 "['<Super>1']"
$GSET_DESK switch-to-workspace-2 "['<Super>2']"
$GSET_DESK switch-to-workspace-3 "['<Super>3']"
$GSET_DESK switch-to-workspace-4 "['<Super>4']"
$GSET_DESK switch-to-workspace-5 "['<Super>5']"
$GSET_DESK switch-to-workspace-6 "['<Super>6']"
$GSET_DESK switch-to-workspace-7 "['<Super>7']"
$GSET_DESK switch-to-workspace-8 "['<Super>8']"
$GSET_DESK switch-to-workspace-9 "['<Super>9']"

$GSET_DESK switch-to-workspace-left "['<Super>Page_Up']"
$GSET_DESK switch-to-workspace-right "['<Super>Page_Down']"

$GSET_DESK move-to-workspace-1 "['<Super><Control>1']"
$GSET_DESK move-to-workspace-2 "['<Super><Control>2']"
$GSET_DESK move-to-workspace-3 "['<Super><Control>3']"
$GSET_DESK move-to-workspace-4 "['<Super><Control>4']"
$GSET_DESK move-to-workspace-5 "['<Super><Control>5']"
$GSET_DESK move-to-workspace-6 "['<Super><Control>6']"
$GSET_DESK move-to-workspace-7 "['<Super><Control>7']"
$GSET_DESK move-to-workspace-8 "['<Super><Control>8']"
$GSET_DESK move-to-workspace-9 "['<Super><Control>9']"

$GSET_DESK move-to-workspace-left "['<Super><Control>Page_Up']"
$GSET_DESK move-to-workspace-right "['<Super><Control>Page_Down']"

$GSET_DESK close "['<Super><Control>q']"
$GSET_DESK toggle-fullscreen "['<Super>f']"
$GSET_DESK cycle-windows "['<Super>Escape']"

# #######################################################################################
# ############################################################################ CUSTOM ###
gsettings set org.gnome.settings-daemon.plugins.media-keys custom-keybindings "[]"

CUST="gsettings set org.gnome.settings-daemon.plugins.media-keys.custom-keybinding:/org/gnome/settings-daemon/plugins/media-keys/custom-keybindings"
KEY_PATH="/org/gnome/settings-daemon/plugins/media-keys/custom-keybindings"

gsettings set org.gnome.settings-daemon.plugins.media-keys custom-keybindings \
"['$KEY_PATH/custom0/', '$KEY_PATH/custom1/', '$KEY_PATH/custom2/', '$KEY_PATH/custom3/']"

$CUST/custom0/ name "Alacritty"
$CUST/custom0/ command "alacritty"
$CUST/custom0/ binding "<Super>Return"

$CUST/custom1/ name "Next theme"
$CUST/custom1/ command "next_theme"
$CUST/custom1/ binding "<Super>t"

$CUST/custom2/ name "Firefox"
$CUST/custom2/ command "firefox"
$CUST/custom2/ binding "<Super>b"

$CUST/custom2/ name "Firefox private"
$CUST/custom2/ command "firefox --private-window"
$CUST/custom2/ binding "<Super><Control>b"

# #######################################################################################
# ############################################################################# RESET ###
$GSET_SHELL open-new-window-application-1 "[]"
$GSET_SHELL open-new-window-application-2 "[]"
$GSET_SHELL open-new-window-application-3 "[]"
$GSET_SHELL open-new-window-application-4 "[]"
$GSET_SHELL open-new-window-application-5 "[]"
$GSET_SHELL open-new-window-application-6 "[]"
$GSET_SHELL open-new-window-application-7 "[]"
$GSET_SHELL open-new-window-application-8 "[]"
$GSET_SHELL open-new-window-application-9 "[]"

$GSET_SHELL switch-to-application-1 "[]"
$GSET_SHELL switch-to-application-2 "[]"
$GSET_SHELL switch-to-application-3 "[]"
$GSET_SHELL switch-to-application-4 "[]"
$GSET_SHELL switch-to-application-5 "[]"
$GSET_SHELL switch-to-application-6 "[]"
$GSET_SHELL switch-to-application-7 "[]"
$GSET_SHELL switch-to-application-8 "[]"
$GSET_SHELL switch-to-application-9 "[]"

$GSET_SHELL_EXT app-hotkey-1 "[]"
$GSET_SHELL_EXT app-hotkey-2 "[]"
$GSET_SHELL_EXT app-hotkey-3 "[]"
$GSET_SHELL_EXT app-hotkey-4 "[]"
$GSET_SHELL_EXT app-hotkey-5 "[]"
$GSET_SHELL_EXT app-hotkey-6 "[]"
$GSET_SHELL_EXT app-hotkey-7 "[]"
$GSET_SHELL_EXT app-hotkey-8 "[]"
$GSET_SHELL_EXT app-hotkey-9 "[]"
$GSET_SHELL_EXT app-hotkey-10 "[]"

$GSET_SHELL_EXT app-shift-hotkey-1 "[]"
$GSET_SHELL_EXT app-shift-hotkey-2 "[]"
$GSET_SHELL_EXT app-shift-hotkey-3 "[]"
$GSET_SHELL_EXT app-shift-hotkey-4 "[]"
$GSET_SHELL_EXT app-shift-hotkey-5 "[]"
$GSET_SHELL_EXT app-shift-hotkey-6 "[]"
$GSET_SHELL_EXT app-shift-hotkey-7 "[]"
$GSET_SHELL_EXT app-shift-hotkey-8 "[]"
$GSET_SHELL_EXT app-shift-hotkey-9 "[]"
$GSET_SHELL_EXT app-shift-hotkey-10 "[]"

$GSET_SHELL_EXT app-ctrl-hotkey-1 "[]"
$GSET_SHELL_EXT app-ctrl-hotkey-2 "[]"
$GSET_SHELL_EXT app-ctrl-hotkey-3 "[]"
$GSET_SHELL_EXT app-ctrl-hotkey-4 "[]"
$GSET_SHELL_EXT app-ctrl-hotkey-5 "[]"
$GSET_SHELL_EXT app-ctrl-hotkey-6 "[]"
$GSET_SHELL_EXT app-ctrl-hotkey-7 "[]"
$GSET_SHELL_EXT app-ctrl-hotkey-8 "[]"
$GSET_SHELL_EXT app-ctrl-hotkey-9 "[]"
$GSET_SHELL_EXT app-ctrl-hotkey-10 "[]"

$GSET_WAY restore-shortcuts "[]"

$GSET_DESK minimize "[]"
$GSET_MEDIA www "[]"
$GSET_SHELL toggle-message-tray "[]"
$GSET_SHELL toggle-quick-settings "[]"
$GSET_SHELL toggle-application-view "[]"
$GSET_SHELL shift-overview-up "[]"
$GSET_SHELL shift-overview-down "[]"
$GSET_SHELL focus-active-notification "[]"
