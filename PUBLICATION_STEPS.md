# Шаги публикации репозитория

## ✅ Подготовка завершена

Все файлы подготовлены и готовы к публикации:
- ✅ Структура монорепо создана (rostelcom/, svyaztransit/)
- ✅ Документация создана (README, LICENSE, CHANGELOG, CONTRIBUTING, SECURITY)
- ✅ .gitignore настроен
- ✅ Персональные данные удалены
- ✅ Упоминаний конкретных городов нет (только общие названия)

## Следующие шаги

### 1. Инициализация Git репозитория (если еще не сделано)

```bash
cd /home/ai/Документы/ScanovichAI/Calls-downloader
git init
git branch -M main
```

### 2. Добавление файлов

```bash
# Добавить все файлы
git add .

# Проверить что добавлено (должны быть исключены: .env, *.db, *.log, venv/, downloads/)
git status
```

### 3. Первый коммит

```bash
git commit -m "Initial commit: voip-calls-downloader monorepo

- Add rostelcom project (CloudPBX RT calls downloader)
- Add svyaztransit project (Stranzit calls downloader)
- Add root documentation (README, LICENSE, CHANGELOG, CONTRIBUTING, SECURITY)
- Configure .gitignore for both projects"
```

### 4. Подключение к GitHub

```bash
# Если репозиторий уже существует на GitHub
git remote add origin git@github.com:FUYOH666/calls-downloader.git

# Или если репозиторий еще не создан, создайте его на GitHub, затем:
git remote add origin git@github.com:FUYOH666/voip-calls-downloader.git
```

### 5. Переименование репозитория на GitHub

Если репозиторий еще называется `calls-downloader`, переименуйте его:

**Через GitHub UI:**
1. Откройте репозиторий на GitHub
2. Settings → General → Repository name
3. Измените на: `voip-calls-downloader`
4. Обновите remote:
   ```bash
   git remote set-url origin git@github.com:FUYOH666/voip-calls-downloader.git
   ```

**Через GitHub CLI:**
```bash
gh repo rename voip-calls-downloader
```

### 6. Push в репозиторий

```bash
git push -u origin main
```

### 7. Настройка метаданных GitHub

См. файл `GITHUB_METADATA.md` для инструкций по настройке:
- Description
- Topics
- Website

**Через GitHub CLI:**
```bash
gh repo edit FUYOH666/voip-calls-downloader \
  --description "Автоматическая загрузка записей звонков из CloudPBX Ростелеком и Связьтранзит. Python CLI инструменты для мониторинга и загрузки аудио-звонков." \
  --homepage "https://scanovich.ai"

gh repo edit FUYOH666/voip-calls-downloader \
  --add-topic python \
  --add-topic voip \
  --add-topic automation \
  --add-topic cli \
  --add-topic telephony \
  --add-topic cloudpbx \
  --add-topic rostelcom \
  --add-topic svyaztransit \
  --add-topic call-records \
  --add-topic audio-downloader \
  --add-topic open-source \
  --add-topic mit-license \
  --add-topic linux
```

### 8. Создание первого релиза

```bash
# Создать тег
git tag -a v1.0.0 -m "Release version 1.0.0"

# Отправить тег
git push origin v1.0.0

# Создать релиз через GitHub CLI
gh release create v1.0.0 \
  --title "Version 1.0.0" \
  --notes "$(cat CHANGELOG.md | sed -n '/## \[1.0.0\]/,/\[1.0.0\]:/p' | head -n -1)"
```

## Проверка перед публикацией

Перед push убедитесь что:

- [ ] Нет файлов `.env` в коммите
- [ ] Нет файлов `*.db` в коммите
- [ ] Нет файлов `*.log` в коммите
- [ ] Нет директорий `venv/` в коммите
- [ ] Нет директорий `downloads/` в коммите
- [ ] Нет персональных данных в файлах
- [ ] Нет упоминаний конкретных городов (только общие названия)

Проверка:
```bash
git ls-files | grep -E '\.(env|db|log)$|venv/|downloads/'
```

Если команда ничего не выводит - всё в порядке!

