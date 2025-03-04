#!/bin/sh

mkdir -p data

ln -s /app/notify.js /app/data/notify.js
ln -s /app/notify.py /app/data/notify.py
printf "const notify = require('notify');\n\nnotify.sendNotify('标题', '内容');\n" > /app/data/notify_sample.js
printf "import notify\n\nnotify.send('标题', '内容')\n" > /app/data/notify_sample.py

./xuanwu