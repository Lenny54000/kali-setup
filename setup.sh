#!/usr/bin/env bash
#
# setup.sh – Kali Linux One-Shot Setup via GitHub Pages
# Auteur : Lenny54000
#
# Exécution :
#   curl -s https://lenny54000.github.io/kali-setup/setup.sh | bash

set -euo pipefail

if [[ "$(id -u)" -ne 0 ]]; then
  echo "⚠️  Ce script doit être exécuté en root (sudo su)."
  exit 1
fi

echo "==> Clavier AZERTY (console + X11)…"
localectl set-keymap fr
localectl set-x11-keymap fr

echo "==> Mise à jour du système…"
apt update && apt full-upgrade -y

echo "==> Installation des drivers VirtualBox…"
apt install -y virtualbox-guest-x11

echo "==> Installation des outils Kali + Hollywood…"
apt install -y kali-linux-default hollywood byobu

echo "✅ Fini ! Redémarre ta machine pour appliquer tout."
