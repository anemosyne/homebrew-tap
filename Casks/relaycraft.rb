cask "relaycraft" do
  version "1.4.2"
  sha256 "43b512e63178d46d6584c80d68179418d56016627c1ed1948ff10d451b22b94b"

  url "https://github.com/relaycraft/relaycraft/releases/download/v#{version}/RelayCraft_#{version}_universal-apple-darwin.dmg"
  name "RelayCraft"
  desc "AI-native network debugging tool"
  homepage "https://github.com/relaycraft/relaycraft"

  livecheck do
    url :url
    strategy :github_latest
  end

  app "RelayCraft.app"

  zap trash: [
    "~/Library/Application Support/com.relaycraft.app",
    "~/Library/Caches/com.relaycraft.app",
    "~/Library/Preferences/com.relaycraft.app.plist",
    "~/Library/Saved Application State/com.relaycraft.app.savedState",
  ]
end
