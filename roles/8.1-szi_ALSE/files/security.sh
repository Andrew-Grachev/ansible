#!/bin/bash

# https://wiki.astralinux.ru/pages/viewpage.action?pageId=109020865

#Блокирует работу утилит sumac и fly-sumac
#astra-sumac-lock enable

#Управление блокировкой запуска пользователями следующих программ:df;chattr;arp;ip
#astra-commands-lock enable

#Включает требование ввода пароля при использовании sudo
#astra-sudo-control enable

#Включает функцию очистки разделов подкачки при завершении работы ОС
#astra-swapwiper-control enable

# Режим Мандатного Контроля Целостности
#astra-mic-control enable

# Режим Мандатного Контроля Целостности ФС
#set-fs-ilev
#unset-fs-ilev

# Режим ЗПС (замкнутой программной среды) в исполняемых файлах

# Блокировка консоли для пользователей
#astra-console-lock enable

#Блокировка интерпретаторов
#astra-interpreters-lock [enable/disable]

#Блокировка установки бита исполнения
#astra-nochmodx-lock enable

#Блокировка макросов
#astra-macros-lock [enable/disable]

# Блокировка трассировки ptrace
#astra-ptrace-lock enable

# Гарантированное удаление файлов и папок
#astra-secdel-control enable

# Межсетевой экран ufw
#astra-ufw-control enable

# Системные ограничения ulimits
#astra-ulimits-control enable

# Блокировка клавиш SysRq
#astra-sysrq-lock enable







