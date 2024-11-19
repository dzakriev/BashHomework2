#!/bin/bash
echo "Список файлов и каталогов в текущей директории:"
for item in *; do
    if [ -d "$item" ]; then
        echo "$item - каталог"
    elif [ -f "$item" ]; then
        echo "$item - файл"
    else
        echo "$item - другой тип"
    fi
done


if [ -n "$1" ]; then
    if [ -e "$1" ]; then
        echo "Файл '$1' существует."
    else
        echo "Файл '$1' отсутствует."
    fi
fi

echo "Имя файла и права доступа:"
for item in *; do
    echo "$(ls -l "$item" | awk '{print $9, $1}')"
done
