#!/bin/bash

# Script pour déplacer (mv) la structure A dans B, en créant les dossiers parents si besoin
# Usage : ./z-merge.sh path_A path_B
# zf250829.1827

set -euo pipefail  # Erreur immédiate sur erreur, non-assignation, pipe

# Vérification des arguments
if [ $# -ne 2 ]; then
    echo "Usage: $0 path_A path_B"
    exit 1
fi

path_A="$1"
path_B="$2"

# Vérifier que les chemins existent
if [ ! -d "$path_A" ]; then
    echo "Erreur : le répertoire '$path_A' n'existe pas."
    exit 1
fi

if [ ! -d "$path_B" ]; then
    echo "Erreur : le répertoire '$path_B' n'existe pas."
    exit 1
fi

# Parcourir tous les dossiers et fichiers dans path_A
# On utilise find pour éviter les problèmes de casse ou d'ordre
find "$path_A" -type d -o -type f | while read -r item; do
    rel_path=$(realpath --relative-to="$path_A" "$item")
    # Construire le chemin cible dans path_B
    target_path="$path_B$(dirname "$rel_path")"
    
    # Créer les dossiers parents si nécessaire
    mkdir -p "$target_path"
    
    # Déplacer le fichier ou le dossier
    mv -v "$item" "$target_path"
done

echo "✅ Déplacement terminé : la structure A a été déplacée dans B"


