#!/bin/bash

DEST=~/texmf/tex/latex/informes-utn

echo "📄 Instalando clase informeutn en $DEST"

mkdir -p "$DEST"

cp informeutn.cls "$DEST"

cp UTN_logo.png "$DEST"

mktexlsr ~/texmf

echo "✅ Clase instalada. Podés usarla con:"
echo ""
echo "    \\documentclass{informeutn}"
echo ""
echo "en cualquier archivo .tex del sistema."

