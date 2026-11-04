# Rimline

Turns the edges and corners of your Mac trackpad into controls: slide an edge for volume or brightness, tap or hold a
corner to run an action, hold a key and the whole trackpad becomes something else.

This repository holds the downloads, the update feed and the Homebrew cask. The app itself is closed source.

## Install

- Download the latest `Rimline-X.Y.Z.dmg` from [Releases](../../releases/latest), open it and drag Rimline to Applications.
- Or with Homebrew: `brew install --cask zawalid/rimline/rimline`.

Rimline needs macOS 13 or later.

## First launch

Rimline is not notarized by Apple yet, so macOS asks you to confirm it once: open it, close the warning, then System
Settings, Privacy & Security, Open Anyway. Or in Terminal: `xattr -dr com.apple.quarantine /Applications/Rimline.app`.

Rimline then asks for Accessibility access, which it needs to read your trackpad and move windows. Nothing leaves your Mac.

## Updates

Rimline can check this repository once a day for a newer version. It is off until you turn it on in General, then
Updates. With Homebrew, `brew upgrade --cask rimline` also works; pick one way.
