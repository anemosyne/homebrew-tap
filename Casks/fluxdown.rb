cask "fluxdown" do
  version "0.4.7"
  sha256 "257bc3e872361fb55c0fa55c449b4189865c683ccf0a04b2e813b0bf5e4132a0"

  url "https://github.com/zerx-lab/FluxDown/releases/download/v#{version}/FluxDown-#{version}-macos-arm64.dmg"
  name "FluxDown"
  desc "Multi-protocol download manager written in Rust"
  homepage "https://github.com/zerx-lab/FluxDown"

  livecheck do
    url :url
    strategy :github_latest
  end

  app "FluxDown.app"

  zap trash: [
    "~/Library/Application Support/com.fluxdown.app",
    "~/Library/Caches/com.fluxdown.app",
    "~/Library/Preferences/com.fluxdown.app.plist",
    "~/Library/Saved Application State/com.fluxdown.app.savedState",
  ]
end
