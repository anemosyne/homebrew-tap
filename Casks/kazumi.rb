cask "kazumi" do
  version "2.2.8"
  sha256 "f3c387a36f7320799ff10f5a08bc7b6a368de5e9aa804a6b6457507669d140dc"

  url "https://github.com/Predidit/Kazumi/releases/download/#{version}/Kazumi_macos_#{version}.dmg"
  name "Kazumi"
  desc "Rule-based anime streaming client with danmaku"
  homepage "https://github.com/Predidit/Kazumi"

  livecheck do
    url :url
    strategy :github_latest
  end

  app "Kazumi.app"

  zap trash: [
    "~/Library/Application Support/com.example.kazumi",
    "~/Library/Caches/com.example.kazumi",
    "~/Library/Preferences/com.example.kazumi.plist",
    "~/Library/Saved Application State/com.example.kazumi.savedState",
  ]
end
