cask "hikage" do
  version "0.10.2"
  sha256 "5c385145368759bc699bce082a4fbeaf37ec53a5c2e844ee6cc04dd5e0d188d8"

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
