# homebrew-tools

A Homebrew tap for tools by [@huswim](https://github.com/huswim).

## Usage

```bash
brew tap huswim/tools
```

## Casks

| Cask | Description | Version |
|------|-------------|---------|
| `dock-shortcut` | macOS menu bar app to launch or switch Dock apps with keyboard shortcuts | 0.2.1 |

### dock-shortcut

```bash
brew install --cask huswim/tools/dock-shortcut
```

Assigns `Ctrl+Option+1–0` shortcuts to the first 10 apps in your Dock.
See [mac-dock-shortcut](https://github.com/huswim/mac-dock-shortcut) for details.

The app is installed to `/Applications/DockShortcut.app`.

The app runs in the menu bar. Use the **Launch at Login** option in its menu to start it automatically on login.
