cask "abctab" do
  version "1.5.0"
  sha256 "935cc38afd2a624f746f74421fef5640af2181e51397f4a90b675e40c18da8c8"

  url "https://solocraft.app/downloads/AbcTab-#{version}.dmg"
  name "AbcTab"
  desc "First-letter app and window switcher"
  homepage "https://solocraft.app/abctab.html"

  # 下载入口 302 到带版本号的 dmg
  livecheck do
    url "https://solocraft.app/download/abctab"
    strategy :header_match
  end

  depends_on macos: :sonoma

  app "AbcTab.app"

  zap trash: [
    "~/Library/Application Support/app.solocraft.abctab",
    "~/Library/Caches/app.solocraft.abctab",
    "~/Library/Preferences/app.solocraft.abctab.plist",
    "~/Library/Saved Application State/app.solocraft.abctab.savedState",
  ]
end
