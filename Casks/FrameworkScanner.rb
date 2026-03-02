cask "frameworkscanner" do
  version "1.1.1"
  sha256 "c26a2824bbf1c4d59b8b0ee4f1f1b1a8910640cd52b8d6f1883ada0ecbf60f6e"

  url "https://github.com/Geoion/FrameworkScanner/releases/download/v#{version}/FrameworkScanner-#{version}.dmg"
  name "FrameworkScanner"
  desc "Scan macOS apps and identify their development frameworks"
  homepage "https://github.com/Geoion/FrameworkScanner"

  depends_on macos: ">= :ventura"

  app "FrameworkScanner.app"

  caveats <<~EOS
    FrameworkScanner is not notarized. If macOS Gatekeeper blocks the app on first launch, run:

      xattr -cr /Applications/FrameworkScanner.app

    Then open the app normally.
  EOS

  zap trash: [
    "~/Library/Application Support/com.eskiyin.FrameworkScanner",
    "~/Library/Preferences/com.eskiyin.FrameworkScanner.plist",
    "~/Library/Caches/com.eskiyin.FrameworkScanner",
  ]
end
