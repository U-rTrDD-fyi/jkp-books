# JKP Books Downloader

Downloads PDFs from a configurable source.

## Usage

### Local
```bash
chmod +x download.sh
./download.sh
```

### GitHub Actions
- **Auto-triggers** when `files.txt` or `config.env` is pushed to main
- **Manual trigger** via Actions tab → "Download PDFs" → Run workflow
- Downloads are available as **artifacts** and **releases**

## Configuration

- `files.txt` — one filename per line
- `config.env` — base URL, user agent, parallelism
