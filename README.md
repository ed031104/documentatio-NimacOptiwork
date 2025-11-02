# documentatio-NimacOptiwork

Documentación de arquitectura del proyecto NimacOptiwork utilizando el modelo C4 y Structurizr.

## Requisitos Previos

- Java 17 o superior (para ejecutar Structurizr Lite)
- Docker (alternativa recomendada)

## Instalación de Structurizr Lite

Structurizr Lite es una herramienta que permite visualizar diagramas de arquitectura definidos con el lenguaje DSL de Structurizr. Existen varias formas de instalarlo y ejecutarlo:

### Opción 1: Docker (Recomendado)

Esta es la forma más sencilla de ejecutar Structurizr Lite:

```bash
docker pull structurizr/lite
docker run -it --rm -p 8080:8080 -v $(pwd):/usr/local/structurizr structurizr/lite
```

Para Windows (PowerShell):
```powershell
docker pull structurizr/lite
docker run -it --rm -p 8080:8080 -v ${PWD}:/usr/local/structurizr structurizr/lite
```

### Opción 2: Descarga Directa

1. Descarga la última versión de Structurizr Lite desde [GitHub Releases](https://github.com/structurizr/lite/releases)
2. Descomprime el archivo descargado
3. Navega al directorio descomprimido

### Opción 3: Homebrew (macOS)

```bash
brew install structurizr-lite
```

## Ejecución del Proyecto

### Con Docker

Una vez instalado Docker, ejecuta el siguiente comando desde la raíz del proyecto:

```bash
docker run -it --rm -p 8080:8080 -v $(pwd):/usr/local/structurizr structurizr/lite
```

### Con Instalación Directa

Si descargaste Structurizr Lite manualmente:

```bash
cd structurizr-lite
./structurizr.sh /ruta/al/proyecto/documentatio-NimacOptiwork
```

Para Windows:
```cmd
cd structurizr-lite
structurizr.bat C:\ruta\al\proyecto\documentatio-NimacOptiwork
```

## Acceso a la Interfaz Web

Una vez iniciado Structurizr Lite, abre tu navegador y accede a:

```
http://localhost:8080
```

Aquí podrás visualizar y explorar los diagramas de arquitectura del proyecto.

## Estructura del Proyecto

```
documentatio-NimacOptiwork/
├── workspace.dsl          # Definición de la arquitectura en DSL
├── workspace.json         # Configuración del workspace (opcional)
└── README.md             # Este archivo
```

## Documentación Adicional

- [Documentación oficial de Structurizr](https://structurizr.com/)
- [Guía del lenguaje DSL](https://github.com/structurizr/dsl)
- [Modelo C4](https://c4model.com/)

## Troubleshooting

### Puerto 8080 ya en uso

Si el puerto 8080 ya está siendo utilizado, puedes usar otro puerto:

```bash
docker run -it --rm -p 8081:8080 -v $(pwd):/usr/local/structurizr structurizr/lite
```

Luego accede a `http://localhost:8081`

### Problemas de permisos en Docker

En Linux, si tienes problemas de permisos con los volúmenes de Docker:

```bash
docker run -it --rm -p 8080:8080 -v $(pwd):/usr/local/structurizr -e STRUCTURIZR_WORKSPACE_PATH=/usr/local/structurizr structurizr/lite
```