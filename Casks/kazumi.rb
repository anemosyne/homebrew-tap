cask "kazumi" do
  version "2.4.7"
  sha256 "b363959c2f41490306f7909d82d5cc14cc7e897ac562c0956ffd594246c89af1"

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
