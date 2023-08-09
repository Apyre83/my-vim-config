# Ma Configuration Vim

## Introduction

Le but de ce projet est de présenter ma configuration Vim aux débutants, afin de montrer la puissance de l'outil et d'apprendre les bases de Vim.

## Prérequis

### Installer Neovim

Pour installer Neovim, suivez les [instructions d'installation officielles sur le dépôt GitHub de Neovim](https://github.com/neovim/neovim/wiki/Installing-Neovim).

### Installer vim-plug pour Neovim

Pour installer vim-plug, un gestionnaire de plugins pour Vim, suivez les [instructions d'installation officielles sur le dépôt GitHub de vim-plug](https://github.com/junegunn/vim-plug#installation).

## Installation et Configuration

Après avoir installé les prérequis, vous pouvez lancer Neovim en utilisant la commande `nvim` et exécuter la commande `:PlugInstall` pour installer les plugins.

## Fonctionnalités

### Mode Concentré avec Goyo

Appuyez sur `Tab` pour entrer en mode concentré grâce à Goyo.

### Raccourcis Utiles

- Utilisez `<F1>` pour insérer l'en-tête de l'école.
- Appuyez sur `<F8>` pour basculer Vim-Airline.
- Utilisez `<Esc>` en mode terminal pour quitter le mode terminal.

### Configuration des Couleurs avec Nightly

La configuration utilise le thème "nightly" avec des options de style spécifiques.

### Plug-Ins Utilisés

- **42header.vim**: Pour les en-têtes de l'école.
- **nightly.nvim & rainbow**: Pour la coloration et les parenthèses arc-en-ciel.
- **nerdtree & nerdtree-git-plugin**: Pour l'exploration de fichiers.
- **vim-cpp-modern**: Pour la coloration syntaxique moderne du C++.
- **vim-devicons**: Pour les icônes de développement.
- **vim-airline & goyo.vim**: Pour la barre d'état et le mode concentré.

### Mappages de Clés Personnalisés

Des mappages de clés ont été configurés pour corriger les erreurs de frappe courantes lors de la sauvegarde et de la fermeture de fichiers.

### Autres Configurations

- Configuration pour la compilation C++ avec des drapeaux spécifiques.
- Paramètres pour l'affichage des numéros de ligne, l'encodage et plus encore.
- Fonctionnalité de "taille de dossier" personnalisée pour la barre d'état.

## Comprendre init.lua

Le fichier `init.lua` sert de point d'entrée à la configuration et contient divers paramètres et fonctionnalités clés. Voici quelques éléments notables :

- **Configuration de Base**: Définit les paramètres de base tels que l'encodage, l'affichage des numéros de ligne et la taille des tabulations.
- **Chargement des Modules**: Utilise `require` pour charger divers fichiers de configuration séparés, organisant ainsi la configuration en parties plus gérables.
- **Mappages de Clés Globaux**: Définit un leader global pour les mappages de clés et inclut d'autres mappages tels que la sortie du mode insertion avec `jk`.
- **Configuration de Plugin**: Active et configure des plugins spécifiques, comme les parenthèses arc-en-ciel et les en-têtes personnalisés pour l'école.
- **Fonctions Personnalisées**: Contient des fonctions Lua personnalisées, comme la définition du type de fichier pour les fichiers `.tpp`.
- **Configuration de Compilation C++**: (Commentée) Options pour la compilation C++ avec des drapeaux spécifiques.

Ce fichier sert de colonne vertébrale à la configuration, en connectant et en organisant divers éléments pour créer une expérience Vim cohérente et personnalisée.



## Conclusion

Explorez la configuration, jouez avec les fonctionnalités et découvrez la puissance de Vim avec cette configuration personnalisée. N'hésitez pas à contribuer ou à poser des questions si vous en avez.
