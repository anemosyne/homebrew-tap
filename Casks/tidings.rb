cask "tidings" do
  version "1.1.25"
  sha256 "b96bbeeead717069d23969e2d6cb8052ea262039c0da8796280eaae0a0ffd390"

  url "https://download.tidings.info/macos/stable/Tidings-#{version}-universal.dmg"
  name "Tidings"
  desc "AI-native RSS reader with summaries and translation"
  homepage "https://tidings.info/"

  livecheck do
    url "https://download.tidings.info/macos/stable/latest-mac.yml"
    strategy :electron_builder
  end

  auto_updates true
  depends_on :macos

  app "Tidings.app"

  zap trash: [
    "~/Library/Application Support/info.tidings.app",
    "~/Library/Caches/info.tidings.app",
    "~/Library/Preferences/info.tidings.app.plist",
    "~/Library/Saved Application State/info.tidings.app.savedState",
  ]
end
