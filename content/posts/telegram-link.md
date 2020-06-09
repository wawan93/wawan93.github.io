---
title: "Личная ссылка на телеграм"
date: 2020-06-09T20:30:17+03:00
draft: false
---

Как сделать себе ссылку на свой телеграм, чтобы она открывалась в России

Например, моя ссылка https://wawan.pro/tg в России открывается, на ней загружаются скрипты, стили и картинки. Как это сделать?

Создайте в корневой директории сайта папочку tg, внутри запустите `wget`:

```bash
wget \
 --page-requisites \
 --adjust-extension \
 --span-hosts \
 --convert-links \
 --restrict-file-names=windows \
 --domains telesco.pe,t.me,telegram.org \
 --no-parent \
https://t.me/wawan2030
```
Теперь в вашей директории должно быть что-то типа этого:
```bash
.
├── cdn4.telesco.pe
│   └── file
├── t.me
│   └── wawan2030.html
└── telegram.org
    ├── css
    ├── favicon.ico@3
    └── img
```
Теперь можно скопировать t.me/wawan2030.html в вашу папочку tg
```bash
mv t.me/wawan2030.html ./index.html
```
Заменить все пути в этом файле с `../` на `./` командой 
```bash
sed -i '' 's/\.\.\//\.\//g' ./index.html
```
Всё.
