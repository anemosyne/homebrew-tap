cask "infynidock" do
  version "2.18.2"
  sha256 "ad93bb867e858a469b9ebdbe7275dec7565f80d62172096f1f728de685ac78c8"

  url "https://github.com/yeelone/InfyniDock/releases/download/#{version}/InfyniDock-Installer-#{version}.dmg"
  name "InfyniDock"
  desc "Dock enhancement utility for macOS"
  homepage "https://github.com/yeelone/InfyniDock"

  livecheck do
    url :url
    strategy :github_latest
  end

  app "InfyniDock.app"

  zap trash: [
    "~/Library/Application Support/www.infyniclick.com.dock",
    "~/Library/Caches/www.infyniclick.com.dock",
    "~/Library/Preferences/www.infyniclick.com.dock.plist",
    "~/Library/Saved Application State/www.infyniclick.com.dock.savedState",
  ]
end
