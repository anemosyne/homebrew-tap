cask "strokemouse" do
  version "0.0.36"
  sha256 "8bbe1bab8b672d527945637192f109dfb4e473842bb5cdb0e15e00f25399fa43"

  url "https://github.com/Licoy/StrokeMouse/releases/download/v#{version}/StrokeMouse-macos-arm64.dmg"
  name "StrokeMouse"
  desc "Mouse gesture customization tool"
  homepage "https://github.com/Licoy/StrokeMouse"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on :macos

  app "StrokeMouse.app"

  zap trash: [
    "~/Library/Application Support/com.strokemouse.app",
    "~/Library/Caches/com.strokemouse.app",
    "~/Library/Preferences/com.strokemouse.app.plist",
    "~/Library/Saved Application State/com.strokemouse.app.savedState",
  ]
end
