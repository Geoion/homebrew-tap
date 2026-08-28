cask "frameworkscanner" do
  version "1.1.4"
  sha256 "e9a97b5452a1775286be61227f57548758b687a6e8165d32b8fb871f21d99dbd"

  url "https://github.com/Geoion/FrameworkScanner/releases/download/v#{version}/FrameworkScanner-#{version}.dmg"
  name "FrameworkScanner"
  desc "Scan macOS apps and identify their development frameworks"
  homepage "https://github.com/Geoion/FrameworkScanner"

  depends_on macos: :ventura

  app "FrameworkScanner.app"

  zap trash: [
    "~/Library/Application Support/com.eskiyin.FrameworkScanner",
    "~/Library/Preferences/com.eskiyin.FrameworkScanner.plist",
    "~/Library/Caches/com.eskiyin.FrameworkScanner",
  ]
end
