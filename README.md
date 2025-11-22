hyprland
waybar

mako - notification daemon
rofi - app launcher
alacritty - terminal emulator
zsh - shell
mutagen - colours
nautilus - file explorer

mpv - video
zathura - pdf viewer

bluetui - bluetooth
impala - network
wiremix - audio


# Make zsh the default shell for the user.
chsh -s /bin/zsh "$name" >/dev/null 2>&1
sudo -u "$name" mkdir -p "/home/$name/.cache/zsh/"


# do not need to use password on first boot
sudo mkdir -p /etc/systemd/system/getty@tty1.service.d
sudo nano /etc/systemd/system/getty@tty1.service.d/override.conf

[Service]
ExecStart=
ExecStart=-/sbin/agetty --autologin <username> --noclear %I $TERM

sudo systemctl daemon-reexec
sudo systemctl enable getty@tty1
