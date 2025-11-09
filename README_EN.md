# VoIP Calls Downloader

[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](https://opensource.org/licenses/MIT)
[![Python 3.12](https://img.shields.io/badge/python-3.12-blue.svg)](https://www.python.org/downloads/)
[![Platform: Linux](https://img.shields.io/badge/platform-Linux%20%7C%20macOS-lightgrey.svg)](https://github.com/FUYOH666/voip-calls-downloader)
[![Website](https://img.shields.io/badge/website-scanovich.ai-blue)](https://scanovich.ai)

**Automatic call records downloader for CloudPBX Rostelecom and Svyaztransit. Python CLI tools for monitoring and downloading audio calls.**

---

## Overview

VoIP Calls Downloader is a set of tools for automatically downloading call records from various VoIP providers. The project helps eliminate manual routine work, saving time and energy.

The repository contains two independent projects:
- **rostelcom** — downloader for CloudPBX Rostelecom
- **svyaztransit** — downloader for Svyaztransit

---

## Problems It Solves

- **Manual record downloads** — no need to manually log into dashboards and download files
- **New call tracking** — automatic monitoring and downloading of new records
- **Multiple accounts** — support for working with multiple accounts simultaneously
- **File duplication** — automatic tracking of already downloaded records
- **Filtering** — configurable filters by duration, direction, and other parameters

---

## Features

### CloudPBX Rostelecom (rostelcom)
- ✅ Automatic download of incoming call records
- ✅ Support for up to 16 accounts simultaneously
- ✅ Filtering by call duration
- ✅ Automatic monitoring of new records
- ✅ Duplicate download protection
- ✅ Configurable check intervals

### Svyaztransit (svyaztransit)
- ✅ Automatic download of call records
- ✅ Filtering by direction and duration
- ✅ Health check and system monitoring
- ✅ Automatic restart on failures
- ✅ Cron support for automatic startup
- ✅ Readable filenames with metadata

---

## Requirements

- **Python 3.12** or higher
- **uv** - Python package manager (install: `curl -LsSf https://astral.sh/uv/install.sh | sh`)
- **Linux** or **macOS** (Windows not supported)
- Credentials for access to the corresponding VoIP provider

---

## Quick Start

### CloudPBX Rostelecom

```bash
cd rostelcom
uv sync
cp .env.example .env
# Edit .env with your credentials
uv run call_records_watcher.py --city-id 1 --once
```

Detailed documentation: [rostelcom/README_EN.md](rostelcom/README_EN.md) | [rostelcom/README.md](rostelcom/README.md)

### Svyaztransit

```bash
cd svyaztransit
uv sync
cp .env.example .env
# Edit .env with your credentials
uv run call_records_watcher.py --once
```

Detailed documentation: [svyaztransit/README_EN.md](svyaztransit/README_EN.md) | [svyaztransit/README.md](svyaztransit/README.md)

---

## Repository Structure

```
voip-calls-downloader/
├── README.md                    # This file (English)
├── LICENSE                      # MIT license
├── CHANGELOG.md                 # Change history
├── CONTRIBUTING.md              # Contributor guide
├── SECURITY.md                  # Security policy
├── .gitignore                   # Git exclusions
├── .ruff.toml                   # Ruff linter configuration
├── pyrightconfig.json           # Pyright type checker config
├── .bandit.yml                  # Bandit security linter config
├── .pre-commit-config.yaml      # Pre-commit hooks config
├── rostelcom/                   # CloudPBX Rostelecom project
│   ├── README.md                # Project documentation (Russian)
│   ├── README_EN.md             # Project documentation (English)
│   ├── call_records_watcher.py  # Main downloader script
│   ├── cloudpbx_auth.py         # Authentication module
│   ├── multi_account_downloader.py  # Multi-account orchestrator
│   ├── config.py                # Configuration module (pydantic-settings)
│   ├── pyproject.toml           # Dependencies and metadata
│   ├── .env.example             # Configuration example
│   ├── run_multi_watcher.sh     # Launch script (multiple accounts)
│   ├── run_watcher.sh           # Launch script (single account)
│   └── tests/                   # Tests
└── svyaztransit/                # Svyaztransit project
    ├── README.md                # Project documentation (Russian)
    ├── README_EN.md             # Project documentation (English)
    ├── call_records_watcher.py  # Main downloader script
    ├── stranzit_auth.py         # Authentication module
    ├── config.py                # Configuration module (pydantic-settings)
    ├── health_check.py          # System status check script
    ├── auto_restart.py          # Automatic restart script
    ├── pyproject.toml           # Dependencies and metadata
    ├── .env.example             # Configuration example
    ├── run_watcher.sh           # Launch script
    └── setup_cron.sh            # Automatic startup setup script
```

---

## Configuration

Each project uses a `.env` file to store credentials and settings.

**⚠️ IMPORTANT:** 
- Never commit `.env` files to git
- Use `.env.example` as a template
- Store secrets only in environment variables

Detailed setup instructions can be found in each project's README:
- [rostelcom/README_EN.md](rostelcom/README_EN.md) | [rostelcom/README.md](rostelcom/README.md)
- [svyaztransit/README_EN.md](svyaztransit/README_EN.md) | [svyaztransit/README.md](svyaztransit/README.md)

---

## Technology Stack

- **Python 3.12** - Modern Python with latest features
- **uv** - Fast Python package manager
- **pydantic-settings** - Type-safe configuration management
- **ruff** - Fast Python linter and formatter
- **pyright** - Static type checker
- **bandit** - Security linter
- **pre-commit** - Git hooks for code quality

---

## Documentation

- [CHANGELOG.md](CHANGELOG.md) — change history
- [CONTRIBUTING.md](CONTRIBUTING.md) — how to contribute
- [SECURITY.md](SECURITY.md) — security policy
- [rostelcom/README_EN.md](rostelcom/README_EN.md) — CloudPBX documentation (English)
- [rostelcom/README.md](rostelcom/README.md) — CloudPBX documentation (Russian)
- [svyaztransit/README_EN.md](svyaztransit/README_EN.md) — Svyaztransit documentation (English)
- [svyaztransit/README.md](svyaztransit/README.md) — Svyaztransit documentation (Russian)

---

## Contributing

We welcome any contribution! Please read [CONTRIBUTING.md](CONTRIBUTING.md) for detailed information about the contribution process.

---

## License

This project is distributed under the MIT license. See [LICENSE](LICENSE) for detailed information.

---

## Contacts

**Author:** Aleksandr Mordvinov

**For commercial inquiries:**
- 🌐 **Website:** [scanovich.ai](https://scanovich.ai)

---

*Automated tools for downloading call records from VoIP providers*

