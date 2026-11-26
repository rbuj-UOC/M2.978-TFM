# Trabajo Final de Máster

En esta carpeta se encuentra el código fuente del Trabajo Final de Máster (TFM),
tanto de la memoria como del código de los cuadernos de Jupyter.

El código se ha desarrollado en Python y se ha utilizado Visual Studio Code (VS
Code) como entorno de desarrollo. Las dependencias del proyecto se han
gestionado con conda y se han especificado en el archivo `environment.yml`. Se
utiliza entorno virtual para aislar las dependencias del proyecto y evitar
conflictos con otras librerías instaladas en el sistema.

La memoria se ha redactado en LaTeX y se ha compilado en PDF. Se ha utilizado el
editor de Visual Studio Code (VS Code), las dependencias de LaTeX se han
gestionado en un devcontainer de VS Code. Por lo que se necesita tener instalado
Docker y VS Code con la extensión de devcontainers para poder compilar la
memoria en PDF.

## Cuadernos de Jupyter

Para crear el entorno virtual con conda y ejecutar los cuadernos de Jupyter, se
puede seguir las instrucciones del apartado "Ejecución local en un entorno
virtual creado con conda" del [README.md](src/README.md).

Una vez creado el entorno virtual, se puede ejecutar el cuaderno de Jupyter
`notebook.ipynb` desde VS Code. Para ello, se debe abrir el cuaderno en VS Code
y seleccionar el kernel del entorno virtual creado con conda. A continuación, se
puede ejecutar el cuaderno celda por celda o ejecutar todas las celdas a la vez
desde el menú "Run" de VS Code.

También se puede ejecutar el cuaderno de Jupyter desde la terminal con el
siguiente comando, desde la carpeta `src` y con el entorno virtual activado:

```sh
jupyter nbconvert --to html --execute notebook.ipynb
```

Para obtener el resultado de la ejecución del cuaderno en formato pdf, se puede
ejecutar el siguiente comando, desde la carpeta `src` y con el entorno virtual
activado:

```sh
jupyter nbconvert --to pdf --execute notebook.ipynb
```

Para limpiar la salida del cuaderno de Jupyter y dejarlo sin ejecutar, se puede
ejecutar el siguiente comando, desde la carpeta `src` y con el entorno virtual
activado:

```sh
jupyter nbconvert --clear-output --inplace notebook.ipynb
```

> [!TIP]
> Para obtener el documento en formato pdf, se necesita tener instalado LaTeX
> en el sistema. Se puede instalar LaTeX en macOS mediante MacTeX, que se puede
> descargar desde la página oficial de MacTeX.

> [!TIP]
> Se puede activar el entorno virtual con el siguiente comando:

```sh
conda activate ./.conda
```

## Memoria del TFM

### Automatizaciones en el devcontainer de VS Code (memoria)

Para realizar alguna automatizaciones se utiliza devcontainer CLI.

Desde VS Code:

1. Abre Visual Studio Code en macOS.
2. Abre la paleta de comandos pulsando Cmd + Shift + P.
3. Escribe Dev Containers: Install devcontainer CLI y pulsa Enter.
4. Si macOS te pide la contraseña de administrador para crear el enlace
   simbólico en /usr/local/bin/devcontainer.

Abre una nueva ventana o pestaña del terminal de macOS y comprueba que funciona ejecutando:

```bash
devcontainer --version
```

Para ejecutar las automatizaciones en el devcontainer de VS Code, se debe abrir
el proyecto dentro del devcontainer de VS Code. Para ello, se debe abrir la
paleta de comandos (Cmd+Shift+P) y ejecutar el comando "Dev Containers: Open
Folder in Container...". En la ventana que aparece, se debe seleccionar la
carpeta del proyecto y esperar a que se construya el contenedor.

### Automatizaciones sobre la memoria

Desde un terminal y dentro de la carpeta doc (`cd doc`), se puede ejecutar el
siguiente comando para compilar la memoria en PDF:

```bash
devcontainer exec --workspace-folder . ./bin/build.sh
```

Desde un terminal y dentro de la carpeta doc (`cd doc`), se puede ejecutar el
siguiente comando para limpiar los archivos generados por la compilación de la
memoria en PDF:

```bash
devcontainer exec --workspace-folder . ./bin/clean.sh
```

Desde un terminal y dentro de la carpeta doc (`cd doc`), se puede ejecutar el
siguiente comando para formatear el código fuente de la memoria en LaTeX:

```bash
devcontainer exec --workspace-folder . ./bin/format.sh
```
