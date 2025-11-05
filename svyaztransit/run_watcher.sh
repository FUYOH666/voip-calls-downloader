#!/bin/bash
# Stranzit Call Records Watcher - Cron скрипт
# Запускается каждую минуту для проверки новых звонков

# Переходим в директорию проекта
cd "$(dirname "$0")"

# Проверяем, существует ли .env файл
if [ ! -f ".env" ]; then
    echo "$(date): Ошибка - файл .env не найден!"
    exit 1
fi

# Проверяем наличие виртуального окружения
if [ ! -d "venv" ]; then
    echo "$(date): Создаю виртуальное окружение..."
    python3 -m venv venv
    source venv/bin/activate
    pip install --upgrade pip==25.2
    pip install -r requirements.txt
fi

# Активируем виртуальное окружение
source venv/bin/activate

# Запускаем watcher в непрерывном режиме (для оркестратора)
python3 call_records_watcher.py >> watcher.log 2>&1

# Код выхода 0 означает успех
exit $?
