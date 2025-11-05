# GitHub Repository Metadata

Этот файл содержит метаданные для настройки репозитория на GitHub.

## Описание репозитория (Description)

```
Автоматическая загрузка записей звонков из CloudPBX Ростелеком и Связьтранзит. Python CLI инструменты для мониторинга и загрузки аудио-звонков.
```

## Topics (теги)

Добавьте следующие topics через GitHub UI или API:

```
python
voip
automation
cli
telephony
cloudpbx
rostelcom
svyaztransit
call-records
audio-downloader
open-source
mit-license
linux
```

## Website

```
https://scanovich.ai
```

## Инструкции по настройке

### Вариант 1: Через GitHub UI

1. Перейдите в Settings репозитория
2. Переименуйте репозиторий: `calls-downloader` → `voip-calls-downloader`
3. В разделе "About" добавьте:
   - Description (скопируйте из раздела выше)
   - Website: `https://scanovich.ai`
   - Topics (добавьте все теги из списка выше)

### Вариант 2: Через GitHub CLI

```bash
# Переименование репозитория
gh repo rename voip-calls-downloader

# Обновление описания
gh repo edit FUYOH666/voip-calls-downloader \
  --description "Автоматическая загрузка записей звонков из CloudPBX Ростелеком и Связьтранзит. Python CLI инструменты для мониторинга и загрузки аудио-звонков." \
  --homepage "https://scanovich.ai"

# Добавление topics
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

### Вариант 3: Через GitHub API

```bash
# Обновление описания и website
curl -X PATCH https://api.github.com/repos/FUYOH666/voip-calls-downloader \
  -H "Authorization: token YOUR_TOKEN" \
  -H "Accept: application/vnd.github.v3+json" \
  -d '{
    "name": "voip-calls-downloader",
    "description": "Автоматическая загрузка записей звонков из CloudPBX Ростелеком и Связьтранзит. Python CLI инструменты для мониторинга и загрузки аудио-звонков.",
    "homepage": "https://scanovich.ai"
  }'

# Обновление topics
curl -X PUT https://api.github.com/repos/FUYOH666/voip-calls-downloader/topics \
  -H "Authorization: token YOUR_TOKEN" \
  -H "Accept: application/vnd.github.mercy-preview+json" \
  -d '{
    "names": [
      "python",
      "voip",
      "automation",
      "cli",
      "telephony",
      "cloudpbx",
      "rostelcom",
      "svyaztransit",
      "call-records",
      "audio-downloader",
      "open-source",
      "mit-license",
      "linux"
    ]
  }'
```

## После настройки

После настройки метаданных можно удалить этот файл, так как он нужен только для первоначальной настройки.

