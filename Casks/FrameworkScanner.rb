cask "frameworkscanner" do
  version "1.1.2"
  sha256 "93f847c1c21a02b49b4da4f196df62a84a13561f69763216741a238ce4215a62"

  url "https://github.com/Geoion/FrameworkScanner/releases/download/v#{version}/FrameworkScanner-#{version}.dmg"
  name "FrameworkScanner"
  desc "Scan macOS apps and identify their development frameworks"
  homepage "https://github.com/Geoion/FrameworkScanner"

  depends_on macos: :ventura

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
