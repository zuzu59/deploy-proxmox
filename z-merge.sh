#!/bin/bash
# Script pour FUSIONNER A dans B
# - Pour chaque fichier dans A, on crée le dossier parent sur B (si besoin)
# - On déplace le fichier dans ce dossier
# - Les dossiers de B restent intacts
# - Aucune suppression de dossier
# Usage : ./z-merge.sh ~/dev/tata/z-comfyui/data/ComfyUI/models/ ~/dev/titi/z-comfyui/data/ComfyUI/models/

# zf250829.2314

set -euo pipefail

path_A="$1"
path_B="$2"

if [ ! -d "$path_A" ]; then
    echo "Erreur : le répertoire '$path_A' n'existe pas."
    exit 1
fi

if [ ! -d "$path_B" ]; then
    echo "Erreur : le répertoire '$path_B' n'existe pas."
    exit 1
fi

echo "🚀 Fusion de '$path_A' dans '$path_B' (fichiers uniquement)"

# Parcourir tous les fichiers (et dossiers) dans A
find "$path_A" -type f | while read -r file; do
    # Extraire le chemin relatif du fichier par rapport à A
    rel_path=$(basename "$file")
    dir_path=$(dirname "$file")
    rel_dir_path=$(realpath --relative-to="$path_A" "$dir_path")

    # Construire le chemin cible dans B
    target_dir="$path_B/$rel_dir_path"
    target_file="$target_dir/$rel_path"

    # Créer le dossier parent si nécessaire (même s’il existe déjà)
    mkdir -p "$target_dir"

    # Déplacer le fichier de A vers B
    mv -f "$file" "$target_file"

    echo "✅ Fichier copié/écrasé : $file → $target_file"
done

echo "✅ Fusion terminée : les fichiers de '$path_A' ont été ajoutés ou écrasés dans '$path_B'"

