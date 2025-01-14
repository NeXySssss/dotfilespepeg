#!/usr/bin/env sh
DIR=$( cd -P -- "$(dirname -- "$(command -v -- "$0")")" && pwd -P )
. "$DIR"/../../lib/log.sh

log_info "Installing packages"
case "$DISTRO" in
	void)
		sudo xbps-install -Sy figlet figlet-fonts || error "Failed to install packages"
	;;
	arch)
		sudo pacman --needed --noconfirm -Syu figlet || error "Failed to install packages"
	;;
esac

log_info "Generating logo"
if [ -f "${XDG_CONFIG_HOME:-$HOME/.config}"/neofetch/generated-ascii.conf ]; then
	. "${XDG_CONFIG_HOME:-$HOME/.config}"/neofetch/generated-ascii.conf
else
	printf '%s\n%s' '#font=future' "#text=\$(id -u -n)" > "${XDG_CONFIG_HOME:-$HOME/.config}"/neofetch/generated-ascii.conf
fi

{
	printf '\n\n'
	figlet -f "${font:-future}" "${text:-$(id -u -n)}" | sed -E 's|^|      |' | sed -E 's|$|   |'
} > "${XDG_CONFIG_HOME:-$HOME/.config}"/neofetch/generated.ascii || error "Failed to generate a logo"
