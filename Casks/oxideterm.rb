cask "oxideterm" do
  version "2.3.2"
  sha256 "bcfa9de8eb56a5dc28149afcba0f8ed9a7d8bc889c234d27ebd5f3b88ee7b158"

  url "https://github.com/AnalyseDeCircuit/oxideterm/releases/download/v#{version}/OxideTerm_#{version}_macos_arm64.dmg"
  name "OxideTerm"
  desc "AI-native workspace for local shells and remote machines"
  homepage "https://github.com/AnalyseDeCircuit/oxideterm"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on :macos

  app "OxideTerm.app"

  zap trash: [
    "~/Library/Application Support/com.oxideterm.app",
    "~/Library/Caches/com.oxideterm.app",
    "~/Library/Preferences/com.oxideterm.app.plist",
    "~/Library/Saved Application State/com.oxideterm.app.savedState",
  ]
end
