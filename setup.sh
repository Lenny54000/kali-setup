#!/usr/bin/env bash
#
# setup.sh – Kali Linux Setup via GitHub Pages (optimisé)
# Auteur : Lenny54000
#
# Utilisation :
#   curl -s https://lenny54000.github.io/kali-setup/setup.sh | bash

set -euo pipefail

# Vérification de privilèges root
if [[ "$(id -u)" -ne 0 ]]; then
  echo "❌ Ce script doit être exécuté en root (sudo su)."
  exit 1
fi

echo "🔧 Clavier AZERTY (console + X11)…"
localectl set-keymap fr
localectl set-x11-keymap fr

echo "📦 Installation des outils et drivers…"
apt install -y virtualbox-guest-x11 kali-linux-default hollywood byobu

echo "⬆️ Mise à jour complète du système…"
apt update && apt full-upgrade -y

echo "✅ Installation terminée ! Redémarre la machine pour finaliser."
