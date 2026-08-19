cask "onlyoffice-desktop" do
  version "9.4.0"
  sha256 "e965be2222609add6b5a70baa2a8cdb599402491fb2925825d9039dcb154beb4"

  url "https://github.com/ONLYOFFICE/DesktopEditors/releases/download/v#{version}/ONLYOFFICE-arm.dmg"
  name "ONLYOFFICE"
  desc "Open-source office suite for documents, sheets and slides"
  homepage "https://github.com/ONLYOFFICE/DesktopEditors"

  livecheck do
    url :url
    strategy :github_latest
  end

  app "ONLYOFFICE.app"

  zap trash: [
    "~/Library/Application Support/asc.onlyoffice.ONLYOFFICE",
    "~/Library/Caches/asc.onlyoffice.ONLYOFFICE",
    "~/Library/Preferences/asc.onlyoffice.ONLYOFFICE.plist",
    "~/Library/Saved Application State/asc.onlyoffice.ONLYOFFICE.savedState",
  ]
end
