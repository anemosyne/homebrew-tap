cask "infynidock" do
  version "2.22.22"
  sha256 "19fd4c81ab0510762d2c8282ded133e2a8198dca0cda642ec580dda861d36304"

  url "https://github.com/yeelone/InfyniDock/releases/download/#{version}/InfyniDock-Installer-#{version}.dmg"
  name "InfyniDock"
  desc "Dock enhancement utility"
  homepage "https://github.com/yeelone/InfyniDock"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
  depends_on :macos

  app "InfyniDock.app"

  zap trash: [
    "~/Library/Application Support/www.infyniclick.com.dock",
    "~/Library/Caches/www.infyniclick.com.dock",
    "~/Library/Preferences/www.infyniclick.com.dock.plist",
    "~/Library/Saved Application State/www.infyniclick.com.dock.savedState",
  ]
end
