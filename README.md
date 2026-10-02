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

Install any cask directly — the tap is fetched on demand and the tap-qualified name cannot collide
with the old tap name:

```bash
brew install --cask aman-senpai/apps/<cask-name>
```

Or tap once and use the short name:

```bash
brew tap aman-senpai/apps
brew install --cask <cask-name>
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

> **Tap trust**: Homebrew 5+ asks you to trust third-party taps before installing from them —
> accept the prompt, or run `brew trust aman-senpai/apps` (needed in scripts and on CI).

## Documentation

`brew help`, `man brew` or check [Homebrew's documentation](https://docs.brew.sh).
