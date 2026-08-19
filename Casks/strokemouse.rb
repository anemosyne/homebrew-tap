cask "strokemouse" do
  version "0.0.23"
  sha256 "6d9eca4ca012d1a67b7898789702a6b1661398506f153a0a4d52c51ae4c5d84b"

  url "https://github.com/Licoy/StrokeMouse/releases/download/v#{version}/StrokeMouse-macos-arm64.dmg"
  name "StrokeMouse"
  desc "Mouse gesture customization tool"
  homepage "https://github.com/Licoy/StrokeMouse"

  livecheck do
    url :url
    strategy :github_latest
  end

  app "StrokeMouse.app"

  zap trash: [
    "~/Library/Application Support/com.strokemouse.app",
    "~/Library/Caches/com.strokemouse.app",
    "~/Library/Preferences/com.strokemouse.app.plist",
    "~/Library/Saved Application State/com.strokemouse.app.savedState",
  ]
end
