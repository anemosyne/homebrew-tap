cask "fluxdown" do
  version "0.6.3"
  sha256 "5421fa66e28d3e022500bc9a23cdad7eefab401e6e7db10cd0ff2c465ae97319"

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
