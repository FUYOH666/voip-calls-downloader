# Быстрый старт публикации

## Проверка готовности

✅ Все файлы подготовлены
✅ Персональные данные удалены  
✅ Упоминаний конкретных городов нет
✅ Документация создана

## Следующие шаги

### 1. Инициализация Git (если еще не сделано)

```bash
cd /home/ai/Документы/ScanovichAI/Calls-downloader
git init
git branch -M main
```

### 2. Проверка .gitignore

```bash
# Убедиться что секреты исключены
git status
# Должны быть исключены: .env, *.db, *.log, venv/, downloads/
```

### 3. Добавление файлов

```bash
git add .
git commit -m "Initial commit: voip-calls-downloader monorepo"
```

### 4. Подключение к GitHub

```bash
# Если репозиторий уже существует
git remote add origin git@github.com:FUYOH666/calls-downloader.git

# Или создать новый репозиторий на GitHub и подключить
git remote add origin git@github.com:FUYOH666/voip-calls-downloader.git
```

### 5. Переименование репозитория

Через GitHub UI: Settings → Repository name → `voip-calls-downloader`

Или через CLI:
```bash
gh repo rename voip-calls-downloader
```

### 6. Push и настройка метаданных

```bash
git push -u origin main
```

Затем настройте метаданные (см. GITHUB_METADATA.md)

Подробные инструкции: см. PUBLICATION_STEPS.md
