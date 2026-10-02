# Aman-senpai Homebrew Tap

A collection of macOS menu bar apps by [aman-senpai](https://github.com/aman-senpai).

## Available Casks

| Cask | Description | Install |
|------|-------------|---------|
| [androlaunch](https://github.com/aman-senpai/AndroLaunch) | Android device management — screen mirroring, app management, file explorer, and emulator control | `brew install --cask androlaunch` |
| [macdeck](https://github.com/aman-senpai/MacDeck) | Controller-friendly macOS game launcher | `brew install --cask macdeck` |
| [notesbar](https://github.com/aman-senpai/NotesBar) | Quick access to Apple Notes and Obsidian from the menu bar | `brew install --cask notesbar` |
| [zenshelf](https://github.com/aman-senpai/Zenshelf) | Menu bar companion for Zen Browser | `brew install --cask zenshelf` |

## Installation

Tap this repository and install any cask:

```bash
brew tap aman-senpai/apps
brew install --cask <cask-name>
```

Or install directly without tapping first:

```bash
brew install --cask aman-senpai/apps/<cask-name>
```

Or in a `Brewfile`:

```ruby
tap "aman-senpai/apps"
cask "androlaunch"
```

> **Tap name**: this repository was renamed from `homebrew-tap` to `homebrew-apps`. The old
> `brew tap aman-senpai/tap` still resolves through GitHub's redirect, but tapping **both** names
> installs the same casks twice and makes bare cask names fail with *"Cask exists in multiple
> taps"* — use `aman-senpai/apps`, and run `brew untap aman-senpai/tap` if you tapped the old one.

## Documentation

`brew help`, `man brew` or check [Homebrew's documentation](https://docs.brew.sh).
