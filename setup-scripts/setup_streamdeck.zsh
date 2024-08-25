#!/usr/bin/env zsh

# Directorio de los perfiles de Stream Deck
STREAMDECK_DIR="$HOME/Library/Application Support/com.elgato.StreamDeck/ProfilesV2"

# Asegúrate de que el directorio existe
if [ ! -d "$STREAMDECK_DIR" ]; then
    echo "Creando directorio de Stream Deck..."
    mkdir -p "$STREAMDECK_DIR"
fi

# Copiar los perfiles desde los dotfiles
echo "Copiando perfiles de Stream Deck..."
cp -r ../config/streamdeck/*.sdProfile "$STREAMDECK_DIR/"

echo "Perfiles de Stream Deck instalados con éxito."
