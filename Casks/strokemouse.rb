cask "strokemouse" do
  version "0.0.42"
  sha256 "7e4a33497047bce35b78b8b3c30628dbb892acefaeac168e160ddb7e45e9ddb6"

  url "https://github.com/Licoy/StrokeMouse/releases/download/v#{version}/StrokeMouse-macos-arm64.dmg"
  name "StrokeMouse"
  desc "Mouse gesture customization tool"
  homepage "https://github.com/Licoy/StrokeMouse"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
  depends_on :macos

  app "StrokeMouse.app"

  zap trash: [
    "~/Library/Application Support/com.strokemouse.app",
    "~/Library/Caches/com.strokemouse.app",
    "~/Library/Preferences/com.strokemouse.app.plist",
    "~/Library/Saved Application State/com.strokemouse.app.savedState",
  ]
end
