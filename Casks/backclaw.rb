cask "backclaw" do
  version "1.2.0"
  sha256 "dee8b740c03b067969dc2ed076ac18f4a5e244f7d32175a068d6b79a12b343e1"

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
