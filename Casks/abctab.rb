cask "abctab" do
  version "1.4.0"
  sha256 "06ddedceb0b37b4dcf60c91684aa8a4bccc86bb5f66111ee5265ddad793f6552"

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
