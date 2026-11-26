#!/bin/bash

# Detener el script si ocurre algún error en la compilación
set -e

# ==========================================
# CONFIGURACIÓN
# ==========================================
# Cambia "documento" por el nombre de tu archivo .tex principal (sin la extensión)
DOC="rbuj_memoria_TFM012027"


# ==========================================
# COMPILACIÓN
# ==========================================

echo "=== Iniciando el proceso de compilación para: $DOC.tex ==="

# 1. Primera pasada de pdflatex
# Genera los archivos auxiliares básicos (como .aux) necesarios para los glosarios e índices.
echo "[1/6] Primera pasada de pdflatex..."
pdflatex -synctex=1 -interaction=nonstopmode -file-line-error "$DOC.tex"

# 2. Ejecución de BibTeX
# Procesa referencias.bib y genera el archivo .bbl utilizado por LaTeX.
echo "[2/6] Ejecutando BibTeX..."
bibtex "$DOC"

# 3. Ejecución de bib2gls
# Procesa las bases de datos del glosario utilizando la información del archivo auxiliar.
echo "[3/6] Ejecutando bib2gls..."
bib2gls "$DOC"

# 4. Segunda pasada de pdflatex
# Incorpora los términos del glosario ya procesados y actualiza referencias preliminares.
echo "[4/6] Segunda pasada de pdflatex..."
pdflatex -synctex=1 -interaction=nonstopmode -file-line-error "$DOC.tex"

# 5. Tercera pasada de pdflatex
# Consolida definitivamente las referencias cruzadas y la tabla de contenidos (.toc).
echo "[5/6] Tercera pasada de pdflatex..."
pdflatex -synctex=1 -interaction=nonstopmode -file-line-error "$DOC.tex"

# 6. Cuarta pasada adicional (opcional pero recomendada)
# Asegura que la tabla de contenidos, índices y numeraciones de páginas cuadren al 100%.
echo "[6/6] Cuarta pasada de pdflatex (consolidación final)..."
pdflatex -synctex=1 -interaction=nonstopmode -file-line-error "$DOC.tex"

echo "=== ¡Compilación completada con éxito! ==="
