---
# Front matter
lang: ru-RU
title: "Презентация по лабораторной работе"
author: "Elizaveta Savchenko"
institute: \inst{1}RUDN University, Moscow, Russian Federation
	
date: 03.06.2021

## Formatting
toc: false
slide_level: 2
theme: metropolis
header-includes: 
 - \metroset{progressbar=frametitle,sectionpage=progressbar,numbering=fraction}
 - '\makeatletter'
 - '\beamer@ignorenonframefalse'
 - '\makeatother'
aspectratio: 43
section-titles: true
---

# Цель работы

 приобретение практических навыков работы с именованными каналами.

# Выполнение лабораторной работы

1. Изучила приведённые в тексте программы server.c и client.c и взяла данные
примеры за образец.
common.h: 
  ![](image/lab15.0.png)

## 4

server.c:
 ![](image/lab15.1.png)

## 5

 ![](image/lab15.2.png)

## 6

client.c:
 ![](image/lab15.3.png)

## 7

 ![](image/lab15.4.png)

## 8

2. Написала аналогичные программы, внеся следующие изменения:
- работает не 1 клиент, а несколько (например, два).
- клиенты передают текущее время с некоторой периодичностью (например, раз
в пять секунд). Использовала функцию sleep() для приостановки работы клиента.
- сервер работает не бесконечно, а прекращает работу через некоторое время (например, 30 сек). Использовала функцию clock() для определения времени работы
сервера.
common.h:

## 9

 ![](image/lab15.5.png)
 
## 10

server.c:
 ![](image/lab15.6.png)

## 11

cluent.c:
 ![](image/lab15.7.png)

## 12

client2.c:
 ![](image/lab15.8.png)

## 13

  ![](image/lab15.9.png)

## 14

  ![](image/lab15.10.png)

В случае, если сервер завершит работу, не закрыв канал, файл FIFO не удалится, поэтому его в следующий раз создать будет нельзя и вылезет ошибка, следовательно, работать ничего не будет.





# Выводы

 Я приобрела практические навыки работы с именованными каналами.
