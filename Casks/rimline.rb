# Homebrew cask for Rimline. Lives in the tap repository Zawalid/homebrew-rimline as Casks/rimline.rb.
# `scripts/cask.sh <version>` prints this file with the version and the DMG's SHA-256 filled in.
cask "rimline" do
  version "1.2.0"
  sha256 "212975cfc499685a4b43f15396afe820a86123e77faa03a44738ee3523184e7f"

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
