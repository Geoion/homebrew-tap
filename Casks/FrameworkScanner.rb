cask "frameworkscanner" do
  version "1.0.0"
  sha256 "e524b24cef613192e4695c561b59c34f4c7b872a15ecca4550d58a66f120bb27"

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
