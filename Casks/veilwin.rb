cask "veilwin" do
  version "1.1.4"
  sha256 :no_check

  url "https://download.floweb.cn/veilwin_latest_universal.dmg"
  name "veilwin"
  desc "Window-level dimming focus tool"
  homepage "https://www.veilwin.com/"

  livecheck do
    url :url
    strategy :extract_plist
  end

  depends_on :macos

  app "veilwin.app"

  zap trash: [
    "~/Library/Application Support/com.veilwin.app",
    "~/Library/Caches/com.veilwin.app",
    "~/Library/Preferences/com.veilwin.app.plist",
    "~/Library/Saved Application State/com.veilwin.app.savedState",
  ]
end
