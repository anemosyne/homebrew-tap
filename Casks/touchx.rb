cask "touchx" do
  version "1.0.7,118"
  sha256 "ea808f1db58003e1d4cb8a3901c43097daa6710ed19a413c87782fb6363a0de9"

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
