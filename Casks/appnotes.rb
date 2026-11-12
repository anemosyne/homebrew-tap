cask "appnotes" do
  version "1.2"
  sha256 "24c51ea01a594904dbc520ddd7be4e4c6ebfb8dc6c1e136463baf45f4de43b46"

  url "https://github.com/CallMeKingsley97/AppNotes/releases/download/v#{version}/AppNotes-1.0-macOS.dmg"
  name "AppNotes"
  desc "Notes, shortcuts and price-drop tracking for installed apps"
  homepage "https://github.com/CallMeKingsley97/AppNotes"

  # 资产名一直是 AppNotes-1.0-macOS.dmg，版本只体现在 tag 上
  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: :sequoia

  app "AppNotes.app"

  zap trash: [
    "~/Library/Application Support/com.workbuddy.appnotes",
    "~/Library/Caches/com.workbuddy.appnotes",
    "~/Library/Preferences/com.workbuddy.appnotes.plist",
    "~/Library/Saved Application State/com.workbuddy.appnotes.savedState",
  ]
end
