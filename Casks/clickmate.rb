cask "clickmate" do
  version "1.3.1"
  sha256 "bbd0051297b12a05a480da3ace7ff0529d529c67ec54d4c6867fe72cd0888726"

  url "https://github.com/Funnyrz/ClickMate/releases/download/v#{version}/ClickMate-#{version}-universal-unsigned.dmg"
  name "ClickMate"
  desc "Finder context-menu enhancer"
  homepage "https://github.com/Funnyrz/ClickMate"

  livecheck do
    url :url
    strategy :github_latest
  end

  app "ClickMate.app"

  zap trash: [
    "~/Library/Application Support/com.zxacn.clickmate",
    "~/Library/Caches/com.zxacn.clickmate",
    "~/Library/Preferences/com.zxacn.clickmate.plist",
    "~/Library/Saved Application State/com.zxacn.clickmate.savedState",
  ]
end
