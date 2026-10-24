# Homebrew tap for Erudior

[Erudior](https://app.erudior.com/) is a free learning app: courses with lessons, practice exams, flashcards and drills, plus homeschool records kept on your own computer.

```sh
brew install --cask aziliz/erudior/erudior
```

The cask always installs the latest release from [Aziliz/examiner](https://github.com/Aziliz/examiner/releases). Update with `brew upgrade --cask --greedy erudior`.

Erudior isn't notarized by Apple yet, so the cask clears the download quarantine flag after installing; otherwise macOS would refuse to open it the first time.
