#!/usr/bin/env bash
#
# setup.sh – Kali Linux Setup via GitHub Pages (light)
# Auteur : Lenny54000
#
# Exécution :
#   curl -s https://lenny54000.github.io/kali-setup/setup.sh | bash
#

set -euo pipefail

# ────────────────────────────────────────────────────────────────
# Vérification : root requis
if [[ "$(id -u)" -ne 0 ]]; then
  echo "❌  Ce script doit être exécuté en root (sudo su)."
  exit 1
fi

# 1) Ajout du dépôt Microsoft + clé GPG pour VS Code
echo "🗝️  Ajout du dépôt Microsoft pour Visual Studio Code…"
install -m 0755 -d /etc/apt/keyrings
wget -qO- https://packages.microsoft.com/keys/microsoft.asc | \
  gpg --dearmor -o /etc/apt/keyrings/packages.microsoft.gpg
echo \
  "deb [arch=amd64 signed-by=/etc/apt/keyrings/packages.microsoft.gpg] \
  https://packages.microsoft.com/repos/vscode stable main" \
  > /etc/apt/sources.list.d/vscode.list

# 2) Mise à jour des index APT
echo "🔄  Mise à jour des index de paquets…"
apt update

# 3) Installation des outils, drivers et VS Code
echo "📦  Installation des paquets (VirtualBox GA, outils Kali, Hollywood, VS Code)…"
apt install -y \
  virtualbox-guest-x11 \
  kali-linux-default \
  hollywood byobu \
  code

# 4) Mise à niveau complète
echo "⬆️  Mise à niveau complète du système…"
apt full-upgrade -y

# 5) Nettoyage
echo "🧹  Nettoyage des paquets inutiles…"
apt autoremove -y
apt clean

echo "✅  Installation terminée ! Redémarre la machine pour appliquer tous les changements."
