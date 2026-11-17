# Homebrew cask for Rimline. Lives in the tap repository Zawalid/homebrew-rimline as Casks/rimline.rb.
# `scripts/cask.sh <version>` prints this file with the version and the DMG's SHA-256 filled in.
cask "rimline" do
  version "1.1.1"
  sha256 "869a90a278a6482cf81e2f29acef42020641a7f46b958eab6b290afabd1fffd6"

  url "https://github.com/Zawalid/homebrew-rimline/releases/download/v#{version}/Rimline-#{version}.dmg"
  name "Rimline"
  desc "Turns the edges and corners of your trackpad into controls"
  homepage "https://rimline.zawalid.com"

  depends_on macos: :ventura

  app "Rimline.app"

  zap trash: [
    "~/Library/Application Support/Rimline",
    "~/Library/Caches/com.zawalid.rimline",
    "~/Library/Preferences/com.zawalid.rimline.plist",
  ]

  caveats <<~EOS
    Rimline is not signed with an Apple Developer ID yet, so macOS blocks it the first time you open it.
    Choose Open Anyway in System Settings, Privacy & Security, or run:
      xattr -dr com.apple.quarantine #{appdir}/Rimline.app
    Rimline then asks for Accessibility access, which it needs to read your trackpad and move windows.
  EOS
end
