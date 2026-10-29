cask "clickmate" do
  version "1.3.7"
  sha256 "629bd3b8b3bac3cf642b3c50cee61544e1d585f63b8eecb46ff2264d842bd9b7"

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
