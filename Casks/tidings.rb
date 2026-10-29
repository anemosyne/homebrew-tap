cask "tidings" do
  version "1.1.24"
  sha256 "0166cfc82311e7931b7e9d22e295fde44d25d1f0306d726f6f6c608534a2a50b"

  url "https://download.tidings.info/macos/stable/Tidings-#{version}-universal.dmg"
  name "Tidings"
  desc "AI-native RSS reader with summaries and translation"
  homepage "https://tidings.info"

  livecheck do
    url "https://download.tidings.info/macos/stable/latest-mac.yml"
    strategy :electron_builder
  end

  app "Tidings.app"

  zap trash: [
    "~/Library/Application Support/info.tidings.app",
    "~/Library/Caches/info.tidings.app",
    "~/Library/Preferences/info.tidings.app.plist",
    "~/Library/Saved Application State/info.tidings.app.savedState",
  ]
end
