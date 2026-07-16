cask "kettle" do
  version "1.1.0"
  sha256 "d54e74348154b1fca616a0072dd53e557ea8b0a1985ffa20e2e6bed6f9b1db9d"

  url "https://github.com/Geoion/Kettle/releases/download/v#{version}/Kettle-#{version}.dmg"
  name "Kettle"
  desc "Native macOS GUI for Homebrew — manage packages, casks, taps, and services"
  homepage "https://github.com/Geoion/Kettle"

  depends_on macos: :sequoia

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
