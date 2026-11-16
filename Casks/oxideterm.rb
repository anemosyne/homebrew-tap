cask "oxideterm" do
  version "2.3.3"
  sha256 "6a0bb614a3c626a8fbb86e210264d0d657b204820c055da7d277e9461a0fb631"

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
