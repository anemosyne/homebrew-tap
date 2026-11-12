cask "hereisland" do
  version "2026.10.13"
  sha256 "513086ebe845be4fc802bc5d860b527610bcfdb294c0e784e4adaf955d3fbf76"

  url "https://github.com/locusable-studio/HereIsland/releases/download/v#{version}/HereIsland-#{version}.dmg"
  name "Here Island"
  desc "Dynamic Island-style notch overlay"
  homepage "https://github.com/locusable-studio/HereIsland"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on :macos

  app "Here Island.app"

  zap trash: [
    "~/Library/Application Support/com.locusable.hereisland",
    "~/Library/Caches/com.locusable.hereisland",
    "~/Library/Preferences/com.locusable.hereisland.plist",
    "~/Library/Saved Application State/com.locusable.hereisland.savedState",
  ]
end
