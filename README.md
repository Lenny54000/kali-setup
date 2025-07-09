# Kali-Setup Script

**Auteur : Lenny54000**

---

## 📜 Description

`setup.sh` automatise la configuration initiale d’une machine **Kali Linux** lancée depuis un `.vbox` VirtualBox.

### 🛠️ Fonctionnalités

| Étape | Action |
|-------|--------|
| 1️⃣ | Clavier permanent en **AZERTY** (console + interface graphique) |
| 2️⃣ | Langue système en **français** (`fr_FR.UTF-8`) |
| 3️⃣ | Ajout du dépôt Microsoft + installation de **Visual Studio Code** |
| 4️⃣ | Installation des **drivers VirtualBox** |
| 5️⃣ | Installation des outils Kali (`kali-linux-default`) |
| 6️⃣ | Installation de **Hollywood** + **Byobu** |
| 7️⃣ | Mise à jour complète (`apt full-upgrade`) |
| 8️⃣ | Nettoyage (`autoremove` + `clean`) |

---

## ⚙️ Instructions

Copie-colle ces **trois commandes dans l'ordre**, dans un terminal de Kali :

```bash
sudo su
curl -s https://lenny54000.github.io/kali-setup/setup.sh | bash
reboot
