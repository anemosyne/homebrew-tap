cask "fluxdown" do
  version "0.6.7"
  sha256 "ead25d0526916e02b55670a06e118d64f1dad3c396d773e8082619c67870c65e"

  url "https://github.com/zerx-lab/FluxDown/releases/download/v#{version}/FluxDown-#{version}-macos-arm64.dmg"
  name "FluxDown"
  desc "Multi-protocol download manager written in Rust"
  homepage "https://github.com/zerx-lab/FluxDown"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on :macos

  app "FluxDown.app"

  zap trash: [
    "~/Library/Application Support/com.fluxdown.app",
    "~/Library/Caches/com.fluxdown.app",
    "~/Library/Preferences/com.fluxdown.app.plist",
    "~/Library/Saved Application State/com.fluxdown.app.savedState",
  ]
end
