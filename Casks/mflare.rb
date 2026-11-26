cask "mflare" do
  version "0.11.1"
  sha256 "40977f12600636fbdc85e0faf7a9f6a173cec8283410fc3e800ff64c8acf38d6"

  url "https://releases.yuy1n.io/mflare/MFlare-#{version}.zip"
  name "MFlare"
  desc "Menu bar monitor for Cloudflare account usage and builds"
  homepage "https://yuy1n.io/mflare"

  livecheck do
    url "https://releases.yuy1n.io/mflare/appcast.xml"
    strategy :sparkle, &:short_version
  end

  auto_updates true
  depends_on macos: :sonoma

  app "MFlare.app"

  zap trash: [
    "~/Library/Application Support/io.yuy1n.mflare",
    "~/Library/Caches/io.yuy1n.mflare",
    "~/Library/Preferences/io.yuy1n.mflare.plist",
    "~/Library/Saved Application State/io.yuy1n.mflare.savedState",
  ]
end
