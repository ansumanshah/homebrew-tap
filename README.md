# NoodleApps Homebrew Tap

Casks for [NoodleApps](https://noodleapps.com) developer tools.

```sh
brew tap ansumanshah/tap
brew install --cask hakka
```

| Cask | App | Status |
| --- | --- | --- |
| `hakka` | [Hakka for macOS](https://github.com/ansumanshah/hakka) — network inspector + API client | first signed release pending |

The cask lands here automatically with each release (`apps/hakka/Scripts/make_release.sh` in the hakka repo updates version + sha256). Until the first notarized build ships, `brew install` will report the cask as missing.
