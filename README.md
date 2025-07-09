# Kali-Setup Script

**Auteur : Lenny54000**

---

## 📜 Description

Ce script `setup.sh` automatise la configuration initiale d’une machine **Kali Linux** exécutée dans VirtualBox.

### 🛠️ Ce qu'il fait :

| Étape | Action |
|-------|--------|
| 1️⃣ | Ajoute le dépôt Microsoft pour Visual Studio Code |
| 2️⃣ | Met à jour la liste des paquets |
| 3️⃣ | Installe les drivers **VirtualBox Guest Additions** |
| 4️⃣ | Installe les outils Kali (`kali-linux-default`) |
| 5️⃣ | Installe **Visual Studio Code**, **Hollywood** et **Byobu** |
| 6️⃣ | Met à jour complètement le système |
| 7️⃣ | Nettoie les paquets inutiles |

---

## ⚙️ Instructions

Copie-colle ces **trois commandes dans l'ordre**, dans un terminal de Kali :

```bash
sudo su
curl -s https://lenny54000.github.io/kali-setup/setup.sh | bash
reboot
