# Homebrew tap for Whytap

[Whytap](https://whytap.ai) is a free, open-source macOS app: voice dictation,
meeting notes and a local agent in the notch, with your own provider keys.
This tap installs the signed and notarized DMG from
[GitHub Releases](https://github.com/AbsoluteMode/whytap/releases).

```bash
brew install absolutemode/tap/whytap
```

Or add the tap first:

```bash
brew tap absolutemode/tap
brew install --cask whytap
```

Requires macOS 14 (Sonoma) or newer; Whytap itself needs 14.2+.

## Updates

Whytap updates itself through Sparkle (`auto_updates true`), so
`brew upgrade` is not needed. This tap is refreshed with every Whytap release:
the cask pins the release tag and the SHA-256 of that release's
`Whytap-latest.dmg`. To catch up manually: `brew upgrade --cask whytap`
(add `--greedy` if Whytap has already updated itself).

## Uninstall

```bash
brew uninstall --cask whytap
```

This removes the app only. Your settings, meetings, notes and the Case vault
stay on disk, and Keychain items are never touched. To also delete app data
(`~/Library/Application Support/Sidekey`, `com.rootwise.sidekey`, `Whytap`,
`whytap`, caches and preferences):

```bash
brew uninstall --cask --zap whytap
```

**`--zap` deletes your local meeting notes, history and Case vault. Make a
backup first (Whytap → Settings → Backup).**

## Maintenance

The cask is updated by Whytap's release process
(`scripts/update-homebrew-cask.sh` in the
[whytap](https://github.com/AbsoluteMode/whytap) repository). GitHub Actions is
not used. Check locally:

```bash
brew style Casks/whytap.rb
brew audit --cask --strict --online absolutemode/tap/whytap
```

## License

[MIT](LICENSE)
