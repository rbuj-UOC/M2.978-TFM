# TFM

## Ejecución local en un entorno virtual creado con conda

### Creación del entorno virtual con Python 3.9

En primer lugar, se debe instalar miniconda y crear un entorno virtual con
Python 3.9. El shell que se utiliza por defecto en macOS es zsh, pero para poder
ejecutar correctamente los comandos de conda, es recomendable cambiar el shell
por bash.

Para ello, se puede ejecutar el siguiente comando en la terminal:

```shell
chsh -s /bin/bash
```

Después de cambiar el shell, se debe reiniciar la terminal para que los cambios
surtan efecto. Una vez reiniciada la terminal, se puede instalar miniconda y
configurar conda con los siguientes comandos:

```shell
brew install --cask miniconda
conda init
conda config --set auto_activate_base False
source ~/.bash_profile
conda tos accept --override-channels --channel https://repo.anaconda.com/pkgs/main
conda tos accept --override-channels --channel https://repo.anaconda.com/pkgs/r
```

A continuación, se puede crear un entorno virtual con Python 3.9 y activarlo
desde VS Code. Para ello, se debe abrir VS Code y ejecutar el comando "Python:
Create Environment" desde la paleta de comandos (Cmd+Shift+P). En la ventana que
aparece, se debe seleccionar "Conda" como tipo de entorno y "Python 3.9" como
versión de Python. También se puede crear el entorno virtual desde la terminal
con el siguiente comando:

```sh
conda env create --prefix=./.conda --file=environment.yml
```

### Activación y desactivación del entorno virtual

Pera activar el entorno virtual, se puede ejecutar la siguiente orden en la
terminal:

```sh
conda activate ./.conda
```

Para desactivar el entorno virtual, se puede ejecutar la siguiente orden en la
terminal:

```sh
conda deactivate
```

> [!TIP]
> Para cambiar el prompt de la terminal y que muestre el nombre del entorno
> virtual activado, se puede ejecutar la siguiente orden en la terminal:

```sh
conda config --set env_prompt '({name}) '
```
