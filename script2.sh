#!/bin/bash
printf "Текущее значение PATH: $PATH\n\n"
if [ -z "$1" ]; then
    echo "Не указана"
else
    export PATH="$PATH:$1"
    echo "Обновлённое значение PATH: $PATH"
fi

# Изменения PATH существуют только во время жизни сеанса терминала
# для изменения PATH в системе нужно изменить файл bashrc
# echo 'export PATH="$PATH:$1"' >> ~/.bashrc
# и выполнить команду source ~/.bashrc для обновления терминала