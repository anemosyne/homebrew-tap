cask "tidings" do
  version "1.1.12"
  sha256 "d6c6c36e1553cc6d04db446f0508b37f6f54a0777785f62962ab45105c4b81b5"

  url "https://download.tidings.info/macos/stable/Tidings-#{version}-universal.dmg"
  name "Tidings"
  desc "AI-native RSS reader with summaries and translation"
  homepage "https://tidings.info"

  livecheck do
    url :url
    strategy :github_latest
  end

  app "Tidings.app"

  zap trash: [
    "~/Library/Application Support/info.tidings.app",
    "~/Library/Caches/info.tidings.app",
    "~/Library/Preferences/info.tidings.app.plist",
    "~/Library/Saved Application State/info.tidings.app.savedState",
  ]
end
