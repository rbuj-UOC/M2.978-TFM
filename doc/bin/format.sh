#!/bin/bash

echo "Iniciando el formato de todos los ficheros .tex y .cls..."

# Busca y procesa cada fichero de forma recursiva dentro de src
find . -type f \( -name "*.tex" -o -name "*.cls" \) | while read -r filePath; do
    echo "Formateando: $filePath"
    
    # Ejecuta latexindent (genera el .bak por defecto de forma interna)
    latexindent -w -s -l .indentconfig.yaml "$filePath"
    
    # Elimina automáticamente el archivo de respaldo generado (.bak o variantes) si existe
    if [ -f "${filePath}.bak" ]; then
        rm -f "${filePath}.bak"
    fi
done

# Por si acaso genera variaciones numéricas de backup (.bak0, .bak1, etc.)
echo rm -f "*.bak*" | sh

echo "Proceso finalizado correctamente. Todos los ficheros se han actualizado y se han limpiado los backups."