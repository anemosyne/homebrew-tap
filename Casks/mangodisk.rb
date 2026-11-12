cask "mangodisk" do
  version "1.2.3"
  sha256 "d7bff3851f1af6396629f7830d875b72f36a9c582b30706c253febca79921d46"

  url "https://github.com/harry0703/MangoDisk/releases/download/v#{version}/MangoDisk-#{version}-macos.dmg"
  name "MangoDisk"
  desc "Disk cleaner and space analyzer"
  homepage "https://github.com/harry0703/MangoDisk"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on :macos

  app "MangoDisk.app"

  zap trash: [
    "~/Library/Application Support/app.mangodisk.desktop",
    "~/Library/Caches/app.mangodisk.desktop",
    "~/Library/Preferences/app.mangodisk.desktop.plist",
    "~/Library/Saved Application State/app.mangodisk.desktop.savedState",
  ]
end
