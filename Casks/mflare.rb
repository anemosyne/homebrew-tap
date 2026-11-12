cask "mflare" do
  version "0.11.0"
  sha256 "bc876ca4f83c47df24993517e5b2daecae22e734eaac4bca0b7ac71fee2e86bb"

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
