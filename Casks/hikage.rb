cask "hikage" do
  version "0.10.3"
  sha256 "6331f15e9d643c28a4d32ba970984411cc5facdf2075467ad2e6a280780b09b2"

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
