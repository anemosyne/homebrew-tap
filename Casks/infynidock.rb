cask "infynidock" do
  version "2.22.18"
  sha256 "c61d2bbcf003357c354fdedf99e8858902466cc797843f308ce39538d9e5c054"

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
