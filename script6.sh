#!/bin/bash
if [ -f input.txt ]; then
    echo "Содержимое input.txt:"
    cat input.txt
else
    echo "Файл input.txt не найден."
fi

wc -l input.txt > output.txt
echo "Количество строк записано в output.txt."

ls nonexistent_file 2> error.log
echo "Ошибки команды ls записаны в error.log."
