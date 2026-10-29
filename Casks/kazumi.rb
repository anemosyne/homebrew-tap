cask "kazumi" do
  version "2.4.2"
  sha256 "325b52d2f1b84a482c95dac1f1396daba9d106f2ae4eada19677b15c14cf39a7"

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
