cask "yaak" do
  version "2026.6.0"
  sha256 "8fa3bf2b79ac61213d94d8c1ecab348e6826135fe81017fb2dbb2a122df41413"

  url "https://github.com/mountain-loop/yaak/releases/download/v#{version}/Yaak_#{version}_aarch64.dmg"
  name "Yaak"
  desc "Desktop API client for REST, GraphQL, WebSockets, SSE and gRPC"
  homepage "https://github.com/mountain-loop/yaak"

  livecheck do
    url :url
    strategy :github_latest
  end

  app "Yaak.app"

  zap trash: [
    "~/Library/Application Support/app.yaak.desktop",
    "~/Library/Caches/app.yaak.desktop",
    "~/Library/Preferences/app.yaak.desktop.plist",
    "~/Library/Saved Application State/app.yaak.desktop.savedState",
  ]
end
