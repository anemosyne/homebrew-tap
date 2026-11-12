cask "infynidock" do
  version "2.22.20"
  sha256 "c0ceba807db17473e068cc9a98d7067c8ec21cfb8c701b51a7577029f360bb66"

  url "https://github.com/yeelone/InfyniDock/releases/download/#{version}/InfyniDock-Installer-#{version}.dmg"
  name "InfyniDock"
  desc "Dock enhancement utility"
  homepage "https://github.com/yeelone/InfyniDock"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on :macos

  app "InfyniDock.app"

  zap trash: [
    "~/Library/Application Support/www.infyniclick.com.dock",
    "~/Library/Caches/www.infyniclick.com.dock",
    "~/Library/Preferences/www.infyniclick.com.dock.plist",
    "~/Library/Saved Application State/www.infyniclick.com.dock.savedState",
  ]
end
