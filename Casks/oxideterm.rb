cask "oxideterm" do
  version "2.4.1"
  sha256 "93742ae557a8fc5f9d37282c91f1444867375785f89ac0eb2937766d12743287"

  url "https://github.com/AnalyseDeCircuit/oxideterm/releases/download/v#{version}/OxideTerm_#{version}_macos_arm64.dmg"
  name "OxideTerm"
  desc "AI-native workspace for local shells and remote machines"
  homepage "https://github.com/AnalyseDeCircuit/oxideterm"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
  depends_on :macos

  app "OxideTerm.app"

  zap trash: [
    "~/Library/Application Support/com.oxideterm.app",
    "~/Library/Caches/com.oxideterm.app",
    "~/Library/Preferences/com.oxideterm.app.plist",
    "~/Library/Saved Application State/com.oxideterm.app.savedState",
  ]
end
