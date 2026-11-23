cask "kazumi" do
  version "2.4.6"
  sha256 "82cbbb27fcb2ec74830c189ecd8b8a0dcd7bcd6a8c6b9aa5d39bca782f9bef72"

  url "https://github.com/Predidit/Kazumi/releases/download/#{version}/Kazumi_macos_#{version}.dmg"
  name "Kazumi"
  desc "Rule-based anime streaming client with danmaku"
  homepage "https://github.com/Predidit/Kazumi"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on :macos

  app "Kazumi.app"

  zap trash: [
    "~/Library/Application Support/com.example.kazumi",
    "~/Library/Caches/com.example.kazumi",
    "~/Library/Preferences/com.example.kazumi.plist",
    "~/Library/Saved Application State/com.example.kazumi.savedState",
  ]
end
