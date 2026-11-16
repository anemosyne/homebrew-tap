cask "touchx" do
  version "1.0.8,127"
  sha256 "414fdb1a89f0ed22b00b445a9d7ced24cab0b1d0fc23cf2c29eae01a4c96fca0"

  url "https://touchx.cc/downloads/TouchX-#{version.csv.second}.dmg"
  name "TouchX"
  desc "Custom trackpad gestures for apps, windows and media"
  homepage "https://touchx.cc/"

  livecheck do
    url "https://touchx.cc/downloads/appcast.xml"
    strategy :sparkle
  end

  auto_updates true
  depends_on macos: :sonoma

  app "TouchX.app"

  zap trash: [
    "~/Library/Application Support/app.noteable.touchx",
    "~/Library/Caches/app.noteable.touchx",
    "~/Library/Preferences/app.noteable.touchx.plist",
    "~/Library/Saved Application State/app.noteable.touchx.savedState",
  ]
end
