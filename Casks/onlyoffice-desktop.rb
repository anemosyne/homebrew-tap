cask "onlyoffice-desktop" do
  version "10.0.0"
  sha256 "9095cc8c46f1206237d690c7e146fada0d72dbf7f40c035cd5fd218b680c2deb"

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
