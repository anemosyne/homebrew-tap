cask "easytier-gui" do
  version "2.6.4"
  sha256 "29358d4b565f890b872c72092aa6391636700aae229b3a6baedaf9544b1d1407"

  url "https://github.com/EasyTier/EasyTier/releases/download/v#{version}/easytier-gui_#{version}_aarch64.dmg"
  name "easytier-gui"
  desc "GUI for the decentralized mesh VPN EasyTier"
  homepage "https://github.com/EasyTier/EasyTier"

  livecheck do
    url :url
    strategy :github_latest
  end

  app "easytier-gui.app"

  zap trash: [
    "~/Library/Application Support/com.kkrainbow.easytier",
    "~/Library/Caches/com.kkrainbow.easytier",
    "~/Library/Preferences/com.kkrainbow.easytier.plist",
    "~/Library/Saved Application State/com.kkrainbow.easytier.savedState",
  ]
end
