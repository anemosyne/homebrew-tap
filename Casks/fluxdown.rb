cask "fluxdown" do
  version "0.6.8"
  sha256 "4983d7acf50b4bc18964a5b86f4a865597fdee532661d5b30a50c46468d39506"

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
