#!/usr/bin/env bash
#
# setup.sh – Kali Linux Setup via GitHub Pages (optimisé final)
# Auteur : Lenny54000
#
# Usage :
#   curl -s https://lenny54000.github.io/kali-setup/setup.sh | bash
#

set -euo pipefail

# Vérification de l'exécution en root
if [[ "$(id -u)" -ne 0 ]]; then
  echo "❌ Ce script doit être exécuté en root (sudo su)."
  exit 1
fi

echo "🔧 Configuration du clavier AZERTY (console + X11)…"
localectl set-keymap fr
localectl set-x11-keymap fr

echo "🌍 Configuration de la langue système en français…"
locale-gen fr_FR.UTF-8
update-locale LANG=fr_FR.UTF-8

echo "📦 Installation des outils et drivers…"
apt install -y virtualbox-guest-x11 kali-linux-default hollywood byobu

echo "⬆️ Mise à jour complète du système…"
apt update && apt full-upgrade -y

echo "🧹 Nettoyage des paquets inutiles…"
apt autoremove -y
apt clean

echo "✅ Installation terminée ! Pense à redémarrer la machine pour appliquer tous les changements."
