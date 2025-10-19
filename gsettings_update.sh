#!/usr/bin/env bash

# To get current keybindings:
# gsettings list-recursively

gsettings list-schemas | xargs -n 1 gsettings reset-recursively

# #######################################################################################
# ############################################################################ CUSTOM ###
gsettings set org.gnome.settings-daemon.plugins.media-keys custom-keybindings "[]"

CUST="gsettings set org.gnome.settings-daemon.plugins.media-keys.custom-keybinding:/org/gnome/settings-daemon/plugins/media-keys/custom-keybindings"
KEY_PATH="/org/gnome/settings-daemon/plugins/media-keys/custom-keybindings"

gsettings set org.gnome.settings-daemon.plugins.media-keys custom-keybindings \
"['$KEY_PATH/custom0/', '$KEY_PATH/custom1/', '$KEY_PATH/custom2/', '$KEY_PATH/custom3/', '$KEY_PATH/custom4/']"

$CUST/custom0/ name "Alacritty"
$CUST/custom0/ command "alacritty"
$CUST/custom0/ binding "<Super>Return"

$CUST/custom1/ name "Next theme"
$CUST/custom1/ command "next_theme"
$CUST/custom1/ binding "<Super>t"

$CUST/custom2/ name "Firefox"
$CUST/custom2/ command "firefox"
$CUST/custom2/ binding "<Super>b"

$CUST/custom3/ name "Firefox private"
$CUST/custom3/ command "firefox --private-window"
$CUST/custom3/ binding "<Super><Control>b"

$CUST/custom4/ name "Firefox wordref"
$CUST/custom4/ command "firefox -new-window 'https://www.wordreference.com/enfr/hello'"
$CUST/custom4/ binding "<Super><Control>w"

# #######################################################################################
# ################################################################################ WM ###
GSET_WM="gsettings set org.gnome.desktop.wm.keybindings"

$GSET_WM activate-window-menu "[]"
$GSET_WM always-on-top "[]"
$GSET_WM begin-move "[]"
$GSET_WM begin-resize "[]"
$GSET_WM close "['<Super><Control>q']"
$GSET_WM cycle-group "[]"
$GSET_WM cycle-group-backward "[]"
$GSET_WM cycle-panels "[]"
$GSET_WM cycle-panels-backward "[]"
$GSET_WM cycle-windows "['<Super>Escape']"
$GSET_WM cycle-windows-backward "[]"
$GSET_WM lower "[]"
$GSET_WM maximize "[]"
$GSET_WM maximize-horizontally "[]"
$GSET_WM maximize-vertically "[]"
$GSET_WM minimize "[]"
$GSET_WM move-to-center "[]"
$GSET_WM move-to-corner-ne "[]"
$GSET_WM move-to-corner-nw "[]"
$GSET_WM move-to-corner-se "[]"
$GSET_WM move-to-corner-sw "[]"
$GSET_WM move-to-monitor-down "[]"
$GSET_WM move-to-monitor-left "[]"
$GSET_WM move-to-monitor-right "[]"
$GSET_WM move-to-monitor-up "[]"
$GSET_WM move-to-side-e "[]"
$GSET_WM move-to-side-n "[]"
$GSET_WM move-to-side-s "[]"
$GSET_WM move-to-side-w "[]"
$GSET_WM move-to-workspace-1 "[]"
$GSET_WM move-to-workspace-10 "[]"
$GSET_WM move-to-workspace-11 "[]"
$GSET_WM move-to-workspace-12 "[]"
$GSET_WM move-to-workspace-2 "[]"
$GSET_WM move-to-workspace-3 "[]"
$GSET_WM move-to-workspace-4 "[]"
$GSET_WM move-to-workspace-5 "[]"
$GSET_WM move-to-workspace-6 "[]"
$GSET_WM move-to-workspace-7 "[]"
$GSET_WM move-to-workspace-8 "[]"
$GSET_WM move-to-workspace-9 "[]"
$GSET_WM move-to-workspace-down "['<Control><Shift><Alt>Down']"
$GSET_WM move-to-workspace-last "['<Super><Shift>End']"
$GSET_WM move-to-workspace-left "['<Super><Control>Page_Up']"
$GSET_WM move-to-workspace-right "['<Super><Control>Page_Down']"
$GSET_WM move-to-workspace-up "['<Control><Shift><Alt>Up']"
$GSET_WM panel-main-menu "[]"
$GSET_WM panel-run-dialog "[]"
$GSET_WM raise "[]"
$GSET_WM raise-or-lower "[]"
$GSET_WM set-spew-mark "[]"
$GSET_WM show-desktop "[]"
$GSET_WM switch-applications "['<Super>Tab']"
$GSET_WM switch-applications-backward "['<Shift><Super>Tab']"
$GSET_WM switch-group "[]"
$GSET_WM switch-group-backward "[]"
$GSET_WM switch-input-source "['XF86Keyboard']"
$GSET_WM switch-input-source-backward "['<Shift>XF86Keyboard']"
$GSET_WM switch-panels "[]"
$GSET_WM switch-panels-backward "[]"
$GSET_WM switch-to-workspace-1 "['<Super>1']"
$GSET_WM switch-to-workspace-10 "[]"
$GSET_WM switch-to-workspace-11 "[]"
$GSET_WM switch-to-workspace-12 "[]"
$GSET_WM switch-to-workspace-2 "['<Super>2']"
$GSET_WM switch-to-workspace-3 "['<Super>3']"
$GSET_WM switch-to-workspace-4 "['<Super>4']"
$GSET_WM switch-to-workspace-5 "['<Super>5']"
$GSET_WM switch-to-workspace-6 "['<Super>6']"
$GSET_WM switch-to-workspace-7 "['<Super>7']"
$GSET_WM switch-to-workspace-8 "['<Super>8']"
$GSET_WM switch-to-workspace-9 "['<Super>9']"
$GSET_WM switch-to-workspace-down "[]"
$GSET_WM switch-to-workspace-last "['<Super>End']"
$GSET_WM switch-to-workspace-left "['<Super>Page_Up']"
$GSET_WM switch-to-workspace-right "['<Super>Page_Down']"
$GSET_WM switch-to-workspace-up "['<Super>y']"
$GSET_WM switch-windows "[]"
$GSET_WM switch-windows-backward "[]"
$GSET_WM toggle-above "[]"
$GSET_WM toggle-fullscreen "[]"
$GSET_WM toggle-maximized "[]"
$GSET_WM toggle-on-all-workspaces "[]"
$GSET_WM unmaximize "[]"


# #######################################################################################
# ########################################################################### TILLING ###
GSET_TILLING="gsettings set org.gnome.shell.extensions.tiling-assistant"

$GSET_TILLING activate-layout0 "[]"
$GSET_TILLING activate-layout1 "[]"
$GSET_TILLING activate-layout10 "[]"
$GSET_TILLING activate-layout11 "[]"
$GSET_TILLING activate-layout12 "[]"
$GSET_TILLING activate-layout13 "[]"
$GSET_TILLING activate-layout14 "[]"
$GSET_TILLING activate-layout15 "[]"
$GSET_TILLING activate-layout16 "[]"
$GSET_TILLING activate-layout17 "[]"
$GSET_TILLING activate-layout18 "[]"
$GSET_TILLING activate-layout19 "[]"
$GSET_TILLING activate-layout2 "[]"
$GSET_TILLING activate-layout3 "[]"
$GSET_TILLING activate-layout4 "[]"
$GSET_TILLING activate-layout5 "[]"
$GSET_TILLING activate-layout6 "[]"
$GSET_TILLING activate-layout7 "[]"
$GSET_TILLING activate-layout8 "[]"
$GSET_TILLING activate-layout9 "[]"
$GSET_TILLING adapt-edge-tiling-to-favorite-layout false
$GSET_TILLING auto-tile "[]"
$GSET_TILLING center-window "[]"
$GSET_TILLING debugging-free-rects "[]"
$GSET_TILLING debugging-show-tiled-rects "[]"
$GSET_TILLING default-move-mode 0
$GSET_TILLING disable-tile-groups false
$GSET_TILLING dynamic-keybinding-behavior 0
$GSET_TILLING enable-advanced-experimental-features false
$GSET_TILLING enable-hold-maximize-inverse-landscape false
$GSET_TILLING enable-hold-maximize-inverse-portrait false
$GSET_TILLING enable-raise-tile-group true
$GSET_TILLING enable-tile-animations true
$GSET_TILLING enable-tiling-popup false
$GSET_TILLING enable-untile-animations true
$GSET_TILLING favorite-layout -1
$GSET_TILLING favorite-layouts "[]"
$GSET_TILLING focus-hint 5
$GSET_TILLING focus-hint-color 'rgb(203,67,20)'
$GSET_TILLING focus-hint-outline-border-radius 0
$GSET_TILLING focus-hint-outline-size 8
$GSET_TILLING focus-hint-outline-style 0
$GSET_TILLING horizontal-preview-area 15
$GSET_TILLING ignore-ta-mod 0
$GSET_TILLING import-layout-examples true
$GSET_TILLING last-version-installed 51
$GSET_TILLING low-performance-move-mode false
$GSET_TILLING maximize-with-gap false
$GSET_TILLING monitor-switch-grace-period true
$GSET_TILLING move-adaptive-tiling-mod 1
$GSET_TILLING move-favorite-layout-mod 2
$GSET_TILLING overridden-settings {}
$GSET_TILLING restore-window "[]"
$GSET_TILLING screen-bottom-gap 0
$GSET_TILLING screen-left-gap 0
$GSET_TILLING screen-right-gap 0
$GSET_TILLING screen-top-gap 0
$GSET_TILLING search-popup-layout "[]"
$GSET_TILLING show-layout-panel-indicator false
$GSET_TILLING single-screen-gap 0
$GSET_TILLING tile-bottom-half "['<Super><Shift>Down']"
$GSET_TILLING tile-bottom-half-ignore-ta "[]"
$GSET_TILLING tile-bottomleft-quarter "['<Super><Shift><Alt>Left']"
$GSET_TILLING tile-bottomleft-quarter-ignore-ta "[]"
$GSET_TILLING tile-bottomright-quarter "['<Super><Shift><Alt>Right']"
$GSET_TILLING tile-bottomright-quarter-ignore-ta "[]"
$GSET_TILLING tile-edit-mode "[]"
$GSET_TILLING tile-left-half "['<Super><Shift>Left']"
$GSET_TILLING tile-left-half-ignore-ta "[]"
$GSET_TILLING tile-maximize "['<Super><Shift>m']"
$GSET_TILLING tile-maximize-horizontally "[]"
$GSET_TILLING tile-maximize-vertically "[]"
$GSET_TILLING tile-right-half "['<Super><Shift>Right']"
$GSET_TILLING tile-right-half-ignore-ta "[]"
$GSET_TILLING tile-top-half "['<Super><Shift>Up']"
$GSET_TILLING tile-top-half-ignore-ta "[]"
$GSET_TILLING tile-topleft-quarter "['<Super><Shift><Control>Left']"
$GSET_TILLING tile-topleft-quarter-ignore-ta "[]"
$GSET_TILLING tile-topright-quarter "['<Super><Shift><Control>Right']"
$GSET_TILLING tile-topright-quarter-ignore-ta "[]"
$GSET_TILLING tilegroups-in-app-switcher false
$GSET_TILLING tiling-popup-all-workspace true
$GSET_TILLING toggle-always-on-top "[]"
$GSET_TILLING toggle-maximize-tophalf-timer 600
$GSET_TILLING toggle-tiling-popup "[]"
$GSET_TILLING vertical-preview-area 15
$GSET_TILLING window-gap 5


# #######################################################################################
# ################################################################# SHELL KEYBINDINGS ###
GSET_SHELL_KB="gsettings set org.gnome.shell.keybindings"

$GSET_SHELL_KB focus-active-notification "[]"
$GSET_SHELL_KB open-new-window-application-1 "[]"
$GSET_SHELL_KB open-new-window-application-2 "[]"
$GSET_SHELL_KB open-new-window-application-3 "[]"
$GSET_SHELL_KB open-new-window-application-4 "[]"
$GSET_SHELL_KB open-new-window-application-5 "[]"
$GSET_SHELL_KB open-new-window-application-6 "[]"
$GSET_SHELL_KB open-new-window-application-7 "[]"
$GSET_SHELL_KB open-new-window-application-8 "[]"
$GSET_SHELL_KB open-new-window-application-9 "[]"
$GSET_SHELL_KB screenshot "[]"
$GSET_SHELL_KB screenshot-window "[]"
$GSET_SHELL_KB shift-overview-down "[]"
$GSET_SHELL_KB shift-overview-up "[]"
$GSET_SHELL_KB show-screen-recording-ui "[]"
$GSET_SHELL_KB show-screenshot-ui "['<Super><Control>s']"
$GSET_SHELL_KB switch-to-application-1 "[]"
$GSET_SHELL_KB switch-to-application-2 "[]"
$GSET_SHELL_KB switch-to-application-3 "[]"
$GSET_SHELL_KB switch-to-application-4 "[]"
$GSET_SHELL_KB switch-to-application-5 "[]"
$GSET_SHELL_KB switch-to-application-6 "[]"
$GSET_SHELL_KB switch-to-application-7 "[]"
$GSET_SHELL_KB switch-to-application-8 "[]"
$GSET_SHELL_KB switch-to-application-9 "[]"
$GSET_SHELL_KB toggle-application-view "[]"
$GSET_SHELL_KB toggle-message-tray "[]"
$GSET_SHELL_KB toggle-overview "[]"
$GSET_SHELL_KB toggle-quick-settings "[]"

# #######################################################################################
# ################################################################ SHELL DASH TO DOCK ###
GSET_SHELL_EXT="gsettings set org.gnome.shell.extensions.dash-to-dock"

$GSET_SHELL_EXT activate-single-window true
$GSET_SHELL_EXT always-center-icons false
$GSET_SHELL_EXT animation-time 0.20000000000000001
$GSET_SHELL_EXT app-ctrl-hotkey-1 "[]"
$GSET_SHELL_EXT app-ctrl-hotkey-10 "[]"
$GSET_SHELL_EXT app-ctrl-hotkey-2 "[]"
$GSET_SHELL_EXT app-ctrl-hotkey-3 "[]"
$GSET_SHELL_EXT app-ctrl-hotkey-4 "[]"
$GSET_SHELL_EXT app-ctrl-hotkey-5 "[]"
$GSET_SHELL_EXT app-ctrl-hotkey-6 "[]"
$GSET_SHELL_EXT app-ctrl-hotkey-7 "[]"
$GSET_SHELL_EXT app-ctrl-hotkey-8 "[]"
$GSET_SHELL_EXT app-ctrl-hotkey-9 "[]"
$GSET_SHELL_EXT app-hotkey-1 "[]"
$GSET_SHELL_EXT app-hotkey-10 "[]"
$GSET_SHELL_EXT app-hotkey-2 "[]"
$GSET_SHELL_EXT app-hotkey-3 "[]"
$GSET_SHELL_EXT app-hotkey-4 "[]"
$GSET_SHELL_EXT app-hotkey-5 "[]"
$GSET_SHELL_EXT app-hotkey-6 "[]"
$GSET_SHELL_EXT app-hotkey-7 "[]"
$GSET_SHELL_EXT app-hotkey-8 "[]"
$GSET_SHELL_EXT app-hotkey-9 "[]"
$GSET_SHELL_EXT app-shift-hotkey-1 "[]"
$GSET_SHELL_EXT app-shift-hotkey-10 "[]"
$GSET_SHELL_EXT app-shift-hotkey-2 "[]"
$GSET_SHELL_EXT app-shift-hotkey-3 "[]"
$GSET_SHELL_EXT app-shift-hotkey-4 "[]"
$GSET_SHELL_EXT app-shift-hotkey-5 "[]"
$GSET_SHELL_EXT app-shift-hotkey-6 "[]"
$GSET_SHELL_EXT app-shift-hotkey-7 "[]"
$GSET_SHELL_EXT app-shift-hotkey-8 "[]"
$GSET_SHELL_EXT app-shift-hotkey-9 "[]"
$GSET_SHELL_EXT application-counter-overrides-notifications true
$GSET_SHELL_EXT apply-custom-theme false
$GSET_SHELL_EXT apply-glossy-effect true
$GSET_SHELL_EXT autohide true
$GSET_SHELL_EXT autohide-in-fullscreen false
$GSET_SHELL_EXT background-color '#ffffff'
$GSET_SHELL_EXT background-opacity 0.80000000000000004
$GSET_SHELL_EXT bolt-support true
$GSET_SHELL_EXT click-action 'focus-or-appspread'
$GSET_SHELL_EXT custom-background-color false
$GSET_SHELL_EXT custom-theme-customize-running-dots false
$GSET_SHELL_EXT custom-theme-running-dots-border-color '#ffffff'
$GSET_SHELL_EXT custom-theme-running-dots-border-width 0
$GSET_SHELL_EXT custom-theme-running-dots-color '#ffffff'
$GSET_SHELL_EXT custom-theme-shrink true
$GSET_SHELL_EXT customize-alphas false
$GSET_SHELL_EXT dance-urgent-applications true
$GSET_SHELL_EXT dash-max-icon-size 48
$GSET_SHELL_EXT default-windows-preview-to-open false
$GSET_SHELL_EXT disable-overview-on-startup true
$GSET_SHELL_EXT dock-fixed false
$GSET_SHELL_EXT dock-position 'BOTTOM'
$GSET_SHELL_EXT extend-height true
$GSET_SHELL_EXT force-straight-corner false
$GSET_SHELL_EXT height-fraction 0.90000000000000002
$GSET_SHELL_EXT hide-delay 0.20000000000000001
$GSET_SHELL_EXT hide-tooltip false
$GSET_SHELL_EXT hot-keys true
$GSET_SHELL_EXT hotkeys-overlay true
$GSET_SHELL_EXT hotkeys-show-dock true
$GSET_SHELL_EXT icon-size-fixed true
$GSET_SHELL_EXT intellihide true
$GSET_SHELL_EXT intellihide-mode 'ALL_WINDOWS'
$GSET_SHELL_EXT isolate-locations true
$GSET_SHELL_EXT isolate-monitors false
$GSET_SHELL_EXT isolate-workspaces false
$GSET_SHELL_EXT manualhide false
$GSET_SHELL_EXT max-alpha 0.80000000000000004
$GSET_SHELL_EXT middle-click-action 'launch'
$GSET_SHELL_EXT min-alpha 0.20000000000000001
$GSET_SHELL_EXT minimize-shift true
$GSET_SHELL_EXT multi-monitor false
$GSET_SHELL_EXT preferred-monitor -2
$GSET_SHELL_EXT preferred-monitor-by-connector 'primary'
$GSET_SHELL_EXT pressure-threshold 100.0
$GSET_SHELL_EXT preview-size-scale 0.0
$GSET_SHELL_EXT require-pressure-to-show true
$GSET_SHELL_EXT running-indicator-dominant-color false
$GSET_SHELL_EXT running-indicator-style 'DOTS'
$GSET_SHELL_EXT scroll-action 'switch-workspace'
$GSET_SHELL_EXT scroll-switch-workspace true
$GSET_SHELL_EXT scroll-to-focused-application true
$GSET_SHELL_EXT shift-click-action 'launch'
$GSET_SHELL_EXT shift-middle-click-action 'minimize'
$GSET_SHELL_EXT shortcut "[]"
$GSET_SHELL_EXT shortcut-text ''
$GSET_SHELL_EXT shortcut-timeout 2.0
$GSET_SHELL_EXT show-apps-always-in-the-edge true
$GSET_SHELL_EXT show-apps-at-top false
$GSET_SHELL_EXT show-delay 0.25
$GSET_SHELL_EXT show-dock-urgent-notify true
$GSET_SHELL_EXT show-favorites true
$GSET_SHELL_EXT show-icons-emblems true
$GSET_SHELL_EXT show-icons-notifications-counter true
$GSET_SHELL_EXT show-mounts true
$GSET_SHELL_EXT show-mounts-network true
$GSET_SHELL_EXT show-mounts-only-mounted false
$GSET_SHELL_EXT show-running true
$GSET_SHELL_EXT show-show-apps-button true
$GSET_SHELL_EXT show-trash true
$GSET_SHELL_EXT show-windows-preview true
$GSET_SHELL_EXT transparency-mode 'DEFAULT'
$GSET_SHELL_EXT unity-backlit-items false
$GSET_SHELL_EXT workspace-agnostic-urgent-windows true

# #######################################################################################
# ############################################################################ MUTTER ###
GSET_MUTTER="gsettings set org.gnome.mutter"

$GSET_MUTTER attach-modal-dialogs true
$GSET_MUTTER auto-maximize true
$GSET_MUTTER center-new-windows true
# $GSET_MUTTER check-alive-timeout uint32 5000
$GSET_MUTTER draggable-border-width 10
$GSET_MUTTER dynamic-workspaces true
$GSET_MUTTER edge-tiling true
$GSET_MUTTER experimental-features "[]"
$GSET_MUTTER focus-change-on-pointer-rest true
$GSET_MUTTER locate-pointer-key 'Control_L'
$GSET_MUTTER overlay-key 'Super'
$GSET_MUTTER workspaces-only-on-primary true
${GSET_MUTTER}.keybindings cancel-input-capture "['<Super><Shift>Escape']"
${GSET_MUTTER}.keybindings rotate-monitor "['XF86RotateWindows']"
${GSET_MUTTER}.keybindings switch-monitor "['XF86Display']"
# ${GSET_MUTTER}.keybindings toggle-tiled-left "['<Super>Left']" ############################ Here focus left / right ?
# ${GSET_MUTTER}.keybindings toggle-tiled-right "['<Super>Right']"
${GSET_MUTTER}.keybindings toggle-tiled-left "[]"
${GSET_MUTTER}.keybindings toggle-tiled-right "[]"
${GSET_MUTTER}.wayland xwayland-allow-byte-swapped-clients false
${GSET_MUTTER}.wayland xwayland-allow-grabs false
${GSET_MUTTER}.wayland xwayland-disable-extension "[]"
${GSET_MUTTER}.wayland xwayland-grab-access-rules "[]"
${GSET_MUTTER}.wayland.keybindings restore-shortcuts "[]"
${GSET_MUTTER}.wayland.keybindings switch-to-session-1 "[]"
${GSET_MUTTER}.wayland.keybindings switch-to-session-10 "[]"
${GSET_MUTTER}.wayland.keybindings switch-to-session-11 "[]"
${GSET_MUTTER}.wayland.keybindings switch-to-session-12 "[]"
${GSET_MUTTER}.wayland.keybindings switch-to-session-2 "[]"
${GSET_MUTTER}.wayland.keybindings switch-to-session-3 "[]"
${GSET_MUTTER}.wayland.keybindings switch-to-session-4 "[]"
${GSET_MUTTER}.wayland.keybindings switch-to-session-5 "[]"
${GSET_MUTTER}.wayland.keybindings switch-to-session-6 "[]"
${GSET_MUTTER}.wayland.keybindings switch-to-session-7 "[]"
${GSET_MUTTER}.wayland.keybindings switch-to-session-8 "[]"
${GSET_MUTTER}.wayland.keybindings switch-to-session-9 "[]"
${GSET_MUTTER}.x11 fractional-scale-mode 'scale-ui-down'


# #######################################################################################
# ############################################################################ MEDIA ###
GSET_MEDIA="gsettings set org.gnome.settings-daemon.plugins.media-keys"

$GSET_MEDIA battery-status "[]"
$GSET_MEDIA battery-status-static "['XF86Battery']"
$GSET_MEDIA calculator "[]"
$GSET_MEDIA calculator-static "['XF86Calculator']"
$GSET_MEDIA control-center "[]"
$GSET_MEDIA control-center-static "['XF86Tools']"
$GSET_MEDIA decrease-text-size "[]"
$GSET_MEDIA eject "[]"
$GSET_MEDIA eject-static "['XF86Eject']"
$GSET_MEDIA email "[]"
$GSET_MEDIA email-static "['XF86Mail']"
$GSET_MEDIA help "[]"
$GSET_MEDIA hibernate "[]"
$GSET_MEDIA hibernate-static "['XF86Suspend', 'XF86Hibernate']"
$GSET_MEDIA home "[]"
$GSET_MEDIA home-static "['XF86Explorer']"
$GSET_MEDIA increase-text-size "[]"
$GSET_MEDIA keyboard-brightness-down "[]"
$GSET_MEDIA keyboard-brightness-down-static "['XF86KbdBrightnessDown']"
$GSET_MEDIA keyboard-brightness-toggle "[]"
$GSET_MEDIA keyboard-brightness-toggle-static "['XF86KbdLightOnOff']"
$GSET_MEDIA keyboard-brightness-up "[]"
$GSET_MEDIA keyboard-brightness-up-static "['XF86KbdBrightnessUp']"
$GSET_MEDIA logout "[]"
$GSET_MEDIA magnifier "['<Alt><Super>l']"
$GSET_MEDIA magnifier-zoom-in "['<Alt><Super>equal']"
$GSET_MEDIA magnifier-zoom-out "['<Alt><Super>minus']"
$GSET_MEDIA media "[]"
$GSET_MEDIA media-static "['XF86AudioMedia']"
$GSET_MEDIA mic-mute "[]"
$GSET_MEDIA mic-mute-static "['XF86AudioMicMute']"
$GSET_MEDIA next "[]"
$GSET_MEDIA next-static "['XF86AudioNext', '<Ctrl>XF86AudioNext']"
$GSET_MEDIA on-screen-keyboard "[]"
$GSET_MEDIA pause "[]"
$GSET_MEDIA pause-static "['XF86AudioPause']"
$GSET_MEDIA play "[]"
$GSET_MEDIA play-static "['XF86AudioPlay', '<Ctrl>XF86AudioPlay']"
$GSET_MEDIA playback-forward "[]"
$GSET_MEDIA playback-forward-static "['XF86AudioForward']"
$GSET_MEDIA playback-random "[]"
$GSET_MEDIA playback-random-static "['XF86AudioRandomPlay']"
$GSET_MEDIA playback-repeat "[]"
$GSET_MEDIA playback-repeat-static "['XF86AudioRepeat']"
$GSET_MEDIA playback-rewind "[]"
$GSET_MEDIA playback-rewind-static "['XF86AudioRewind']"
$GSET_MEDIA power "[]"
$GSET_MEDIA power-static "['XF86PowerOff']"
$GSET_MEDIA previous "[]"
$GSET_MEDIA previous-static "['XF86AudioPrev', '<Ctrl>XF86AudioPrev']"
$GSET_MEDIA reboot "[]"
$GSET_MEDIA rfkill "[]"
$GSET_MEDIA rfkill-bluetooth "[]"
$GSET_MEDIA rfkill-bluetooth-static "['XF86Bluetooth']"
$GSET_MEDIA rfkill-static "['XF86WLAN', 'XF86UWB', 'XF86RFKill']"
$GSET_MEDIA rotate-video-lock "[]"
$GSET_MEDIA rotate-video-lock-static "['XF86RotationLockToggle']"
$GSET_MEDIA screen-brightness-cycle "[]"
$GSET_MEDIA screen-brightness-cycle-static "['XF86MonBrightnessCycle']"
$GSET_MEDIA screen-brightness-down "[]"
$GSET_MEDIA screen-brightness-down-static "['XF86MonBrightnessDown']"
$GSET_MEDIA screen-brightness-up "[]"
$GSET_MEDIA screen-brightness-up-static "['XF86MonBrightnessUp']"
$GSET_MEDIA screenreader "[]"
$GSET_MEDIA screensaver "[]"
$GSET_MEDIA screensaver-static "['XF86ScreenSaver']"
$GSET_MEDIA search "[]"
$GSET_MEDIA search-static "['XF86Search']"
$GSET_MEDIA shutdown "[]"
$GSET_MEDIA stop "[]"
$GSET_MEDIA stop-static "['XF86AudioStop']"
$GSET_MEDIA suspend "[]"
$GSET_MEDIA suspend-static "['XF86Sleep']"
$GSET_MEDIA terminal "['<Super><Alt>t']"
$GSET_MEDIA toggle-contrast "[]"
$GSET_MEDIA touchpad-off "[]"
$GSET_MEDIA touchpad-off-static "['XF86TouchpadOff']"
$GSET_MEDIA touchpad-on "[]"
$GSET_MEDIA touchpad-on-static "['XF86TouchpadOn']"
$GSET_MEDIA touchpad-toggle "[]"
$GSET_MEDIA touchpad-toggle-static "['XF86TouchpadToggle', '<Ctrl><Super>XF86TouchpadToggle']"
$GSET_MEDIA volume-down "[]"
$GSET_MEDIA volume-down-precise "[]"
$GSET_MEDIA volume-down-precise-static "['<Shift>XF86AudioLowerVolume', '<Ctrl><Shift>XF86AudioLowerVolume']"
$GSET_MEDIA volume-down-quiet "[]"
$GSET_MEDIA volume-down-quiet-static "['<Alt>XF86AudioLowerVolume', '<Alt><Ctrl>XF86AudioLowerVolume']"
$GSET_MEDIA volume-down-static "['XF86AudioLowerVolume', '<Ctrl>XF86AudioLowerVolume']"
$GSET_MEDIA volume-mute "[]"
$GSET_MEDIA volume-mute-quiet "[]"
$GSET_MEDIA volume-mute-quiet-static "['<Alt>XF86AudioMute']"
$GSET_MEDIA volume-mute-static "['XF86AudioMute']"
$GSET_MEDIA volume-step 6
$GSET_MEDIA volume-up "[]"
$GSET_MEDIA volume-up-precise "[]"
$GSET_MEDIA volume-up-precise-static "['<Shift>XF86AudioRaiseVolume', '<Ctrl><Shift>XF86AudioRaiseVolume']"
$GSET_MEDIA volume-up-quiet "[]"
$GSET_MEDIA volume-up-quiet-static "['<Alt>XF86AudioRaiseVolume', '<Alt><Ctrl>XF86AudioRaiseVolume']"
$GSET_MEDIA volume-up-static "['XF86AudioRaiseVolume', '<Ctrl>XF86AudioRaiseVolume']"
$GSET_MEDIA www "[]"
$GSET_MEDIA www-static "['XF86WWW']"
