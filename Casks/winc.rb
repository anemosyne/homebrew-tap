cask "winc" do
  version "0.1.970"
  sha256 "ac64a138fdc4103b80908c26b74cc0be71dfdccec587d39e74feaa2f2e21fe42"

  url "https://winc.si/releases/Winc-#{version}-macos-arm64.dmg"
  name "Winc"
  desc "Fast native code editor built in Rust"
  homepage "https://winc.si/"

  livecheck do
    url "https://winc.si/releases/appcast-macos-arm64.xml"
    strategy :sparkle, &:short_version
  end

  auto_updates true
  depends_on :macos

  app "winc.app"

  zap trash: [
    "~/Library/Application Support/com.deeix.winc",
    "~/Library/Caches/com.deeix.winc",
    "~/Library/Preferences/com.deeix.winc.plist",
    "~/Library/Saved Application State/com.deeix.winc.savedState",
  ]
end
