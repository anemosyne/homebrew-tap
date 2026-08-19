cask "oxideterm" do
  version "2.0.21"
  sha256 "17bb315b767f8e73454620910fe7a33a13fe98947974f5f6b6e360ee4dae5372"

  url "https://github.com/AnalyseDeCircuit/oxideterm/releases/download/v#{version}/OxideTerm_#{version}_macos_arm64.dmg"
  name "OxideTerm"
  desc "AI-native workspace for local shells and remote machines"
  homepage "https://github.com/AnalyseDeCircuit/oxideterm"

  livecheck do
    url :url
    strategy :github_latest
  end

  app "OxideTerm.app"

  zap trash: [
    "~/Library/Application Support/com.oxideterm.app",
    "~/Library/Caches/com.oxideterm.app",
    "~/Library/Preferences/com.oxideterm.app.plist",
    "~/Library/Saved Application State/com.oxideterm.app.savedState",
  ]
end
