cask "relaycraft" do
  version "1.7.1"
  sha256 "24e73e934d28ab717f423f41eec664a952bbeb4d0e988ca9b44ef7fcda3e53c9"

  url "https://github.com/relaycraft/relaycraft/releases/download/v#{version}/RelayCraft_#{version}_universal-apple-darwin.dmg"
  name "RelayCraft"
  desc "AI-native network debugging tool"
  homepage "https://github.com/relaycraft/relaycraft"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
  depends_on :macos

  app "RelayCraft.app"

  zap trash: [
    "~/Library/Application Support/com.relaycraft.app",
    "~/Library/Caches/com.relaycraft.app",
    "~/Library/Preferences/com.relaycraft.app.plist",
    "~/Library/Saved Application State/com.relaycraft.app.savedState",
  ]
end
