cask "hikage" do
  version "0.10.1"
  sha256 "e5f52a8b04bb49a212d7c0500f0315c64c8371abfd1d7ba4f3ce73d4aa441151"

  url "https://downloads.hikage.app/app.hikage.Hikage/stable/Hikage-#{version}-macOS.zip"
  name "Hikage"
  desc "Automatic local time tracker for apps and websites"
  homepage "https://hikage.app/"

  livecheck do
    url "https://updates.hikage.app/app.hikage.Hikage/stable/appcast.xml"
    strategy :sparkle, &:short_version
  end

  auto_updates true
  depends_on macos: :sonoma

  app "Hikage.app"

  zap trash: [
    "~/Library/Application Support/app.hikage.Hikage",
    "~/Library/Caches/app.hikage.Hikage",
    "~/Library/Preferences/app.hikage.Hikage.plist",
    "~/Library/Saved Application State/app.hikage.Hikage.savedState",
  ]
end
