#!/usr/bin/env zsh

# Fuerza que los comodines vacíos no den error en este script
setopt local_options null_glob

# Lista de extensiones de archivos temporales que queremos eliminar
extensions=(aux bbl blg fdb_latexmk fls glg glstex lof log lol lot out pdf pyg synctex.gz toc)

echo "Iniciando la limpieza de archivos temporales de LaTeX"

# Bucle para recorrer cada una de las extensiones de la lista
for ext in $extensions; do
  # Guardamos los archivos encontrados en una lista (gracias a null_glob no dará
  # error si está vacía)
  files=(*.$ext)
  
  if (( ${#files} > 0 )); then
    echo "Eliminando archivos .*$ext..."
    rm "${files[@]}"
  fi
done

# Eliminamos los directorios generados por minted (si existen)
rm -fr _minted-*

echo "¡Limpieza finalizada con éxito!"
