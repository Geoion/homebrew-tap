cask "kettle" do
  version "1.1.0"
  sha256 "297d81a8e3881a1ff11c7c7d697a2e3a2d74bf6f3a9ee5b16c591376379402de"

  url "https://github.com/Geoion/Kettle/releases/download/v#{version}/Kettle-#{version}.dmg"
  name "Kettle"
  desc "Native macOS GUI for Homebrew — manage packages, casks, taps, and services"
  homepage "https://github.com/Geoion/Kettle"

  depends_on macos: ">= :sequoia"

  app "Kettle.app"

  caveats <<~EOS
    Kettle is not notarized. If macOS Gatekeeper blocks the app on first launch, run:

      xattr -cr /Applications/Kettle.app

    Then open the app normally.
  EOS

  zap trash: [
    "~/Library/Application Support/Kettle",
    "~/Library/Preferences/com.geoion.Kettle.plist",
    "~/Library/Caches/com.geoion.Kettle",
  ]
end
