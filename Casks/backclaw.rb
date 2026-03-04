cask "backclaw" do
  version "1.1.0"
  sha256 "ef363f4dc5b0a99d483646cb7d428cbe3ec42ede96536837732edc5e10e04b47"

  url "https://github.com/Geoion/BackClaw/releases/download/v#{version}/BackClaw-#{version}.dmg"
  name "BackClaw"
  desc "Backup and restore tool for BackClaw configurations"
  homepage "https://github.com/Geoion/BackClaw"

  depends_on macos: ">= :sonoma"

  app "BackClaw.app"

  caveats <<~EOS
    BackClaw is not notarized. If macOS Gatekeeper blocks the app on first launch, run:

      xattr -cr /Applications/BackClaw.app

    Then open the app normally.
  EOS

  zap trash: [
    "~/Library/Application Support/BackClaw",
    "~/Library/Preferences/com.backclaw.app.plist",
    "~/Library/Caches/com.backclaw.app",
  ]
end
