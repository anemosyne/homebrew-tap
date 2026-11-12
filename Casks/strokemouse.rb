cask "strokemouse" do
  version "0.0.41"
  sha256 "f3e95b5918d6286eea73ece2ede02b9ac4e776a519963783935dd9f6d238a5bc"

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
