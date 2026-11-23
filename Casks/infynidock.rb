cask "infynidock" do
  version "2.22.21"
  sha256 "e08e474b1fb3dd2a524779e8bf51d2141e019d1806d42f52c4267e8673e5b535"

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
