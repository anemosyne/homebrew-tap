cask "mangodisk" do
  version "1.0.4"
  sha256 "b9b251dae73602e3685f352cdd6263928201ac93ecc370a2344dff067efa273d"

  url "https://github.com/harry0703/MangoDisk/releases/download/v#{version}/MangoDisk-#{version}-macos.dmg"
  name "MangoDisk"
  desc "Disk cleaner and space analyzer"
  homepage "https://github.com/harry0703/MangoDisk"

  livecheck do
    url :url
    strategy :github_latest
  end

  app "MangoDisk.app"

  zap trash: [
    "~/Library/Application Support/app.mangodisk.desktop",
    "~/Library/Caches/app.mangodisk.desktop",
    "~/Library/Preferences/app.mangodisk.desktop.plist",
    "~/Library/Saved Application State/app.mangodisk.desktop.savedState",
  ]
end
