ФИО: Продан Илья  
Группа: РПО1  
Дата: 31 октября 2026 г.

| № | Команда | Что сделала | Безопасный пример |
|---|---|---|---|
| 1 | mkdir -p ../sorted/{docs,images,logs,data} | Создала четыре каталога | mkdir -pv сначала покажет созданные каталоги |
| 2 | ls -- *.bak | Проверила маску резервных копий | Список до удаления |
| 3 | rm -v -- *.bak | Удалила проверенные *.bak | rm -i спросит подтверждение |
| 4 | mv "my report.txt" my-report.txt | Переименовала файл с пробелом | ls -l перед mv |
| 5 | mv report-*.txt my-report.txt ../sorted/docs/ | Перенесла отчёты | ls с маской перед mv |
| 6 | mv *.{jpg,png} ../sorted/images/ | Перенесла изображения двух типов | echo с маской перед mv |
| 7 | mv app.log app.log.[12] error.log ../sorted/logs/ | Перенесла журналы | ls с масками перед mv |
| 8 | cp *.csv ../sorted/data/ | Скопировала CSV, оригиналы оставила | cp -i для подтверждения перезаписи |
| 9 | find ~/files-lab -type f -size +1M -print | Нашла большой файл | Сначала только -print, затем -delete |
| 10 | find ~/files-lab/inbox -type f -mtime +30 -print | Нашла старые файлы | Проверить список до перенаправления |
| 11 | ls -A; cat .settings | Нашла скрытый файл | ls -A показывает имена без изменений |
| 12 | man -P cat ls | Нашла ключ сортировки по размеру | man ls и поиск по size |
| 13 | updatedb; locate os-release | Обновила индекс и нашла файл | locate --existing os-release |
| 14 | bash ~/Downloads/files-lab-check.sh | Проверила итог | Скрипт только читает результаты |
