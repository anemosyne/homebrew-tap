cask "kazumi" do
  version "2.4.3"
  sha256 "8aad01a2e23f9b0feab481343e44238908c7f87bbac88dfcdcf5939c30038bba"

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
