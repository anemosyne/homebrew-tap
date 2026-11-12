cask "relaycraft" do
  version "1.6.2"
  sha256 "a2f14ad60c8f8a6412e44297e55fd0994b7e98c448020686d16690b41ebfac15"

  url "https://github.com/relaycraft/relaycraft/releases/download/v#{version}/RelayCraft_#{version}_universal-apple-darwin.dmg"
  name "RelayCraft"
  desc "AI-native network debugging tool"
  homepage "https://github.com/relaycraft/relaycraft"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on :macos

  app "RelayCraft.app"

  zap trash: [
    "~/Library/Application Support/com.relaycraft.app",
    "~/Library/Caches/com.relaycraft.app",
    "~/Library/Preferences/com.relaycraft.app.plist",
    "~/Library/Saved Application State/com.relaycraft.app.savedState",
  ]
end
