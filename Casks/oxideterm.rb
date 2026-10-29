cask "oxideterm" do
  version "2.2.6"
  sha256 "78b80aa2701fa7d8fc5c8dc6aa65b0915f6e7fdeab9a0736b76b4dea8a26df4d"

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
