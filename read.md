# Kali-Setup Script

**Auteur : Lenny54000**

---

## Description

`setup.sh` automatise la configuration initiale d’une machine **Kali Linux** exécutée sous VirtualBox (`.vbox`).

### Fonctionnalités

| Étape | Action |
|-------|--------|
| 1 | Clavier permanent en **AZERTY** (console & X11) |
| 2 | Langue système en **français** (`fr_FR.UTF-8`) |
| 3 | Ajout du dépôt Microsoft + installation de **Visual Studio Code** |
| 4 | Installation des **drivers VirtualBox** (`virtualbox-guest-x11`) |
| 5 | Installation du méta-paquet **kali-linux-default** (outils essentiels) |
| 6 | Installation de **Hollywood** + **Byobu** |
| 7 | `apt full-upgrade` pour tout mettre à jour |
| 8 | Nettoyage (`autoremove` + `clean`) |

---

## Utilisation

1. **Devenir root**  
   ```bash
   sudo su
