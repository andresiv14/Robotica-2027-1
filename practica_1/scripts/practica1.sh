#!/bin/bash

# 1. Desplegar mensaje de inicio
echo "Iniciando configuración de directorios para la Práctica 1..."

# 2. Moverse a la carpeta de usuario
cd $HOME
echo "Directorio actual: $(pwd)"

# 3 y 4. Verificar si existe la carpeta Practica1 y crearla
if [ -d "Practica1" ]; then
    echo "La carpeta 'Practica1' ya existe. Eliminándola para empezar desde cero..."
    rm -rf Practica1
fi

mkdir Practica1
echo "Carpeta 'Practica1' creada exitosamente."

# 5. Crear carpeta Letras y sus archivos
mkdir Practica1/Letras
touch Practica1/Letras/a.txt Practica1/Letras/b.txt Practica1/Letras/c.txt

# 6. Crear carpeta Integrantes y sus archivos con los nombres del equipo sin espacios
mkdir Practica1/Integrantes
touch Practica1/Integrantes/AndresIbarraVazquez.txt
touch Practica1/Integrantes/JoseAugustoArenasHernandez.txt
touch Practica1/Integrantes/AxelAlejandroMartinezRamirez.txt

# 7. Mostrar un diagrama de la estructura
echo "--------------------------------------"
echo "Estructura generada:"
if command -v tree &> /dev/null; then
    tree Practica1
else
    echo "(El comando 'tree' no está instalado. Usando 'find' como alternativa visual)"
    find Practica1 | sed -e "s/[^-][^\/]*\//  |/g" -e "s/|\([^ ]\)/|-\1/"
fi
echo "--------------------------------------"

# 8. Eliminar la carpeta Practica1 y su contenido
echo "Eliminando la estructura para mantener limpio el entorno..."
rm -rf Practica1

echo "¡Script finalizado con éxito!"
