cask "okvideomac" do
  version "0.9.4"
  sha256 "2d2ffd84375495c3ce9af815dae2f768b0ea50ece7247ea99b48af9cf4c80813"

  url "https://github.com/yaolin-dev/OKVideoMac/releases/download/v#{version}/OKVideoMac-#{version}.dmg"
  name "OKVideoMac"
  desc "Native video client with libmpv playback"
  homepage "https://github.com/yaolin-dev/OKVideoMac"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
  depends_on :macos

  app "OKVideoMac.app"

  zap trash: [
    "~/Library/Application Support/com.okvideomac.OKVideoMac",
    "~/Library/Caches/com.okvideomac.OKVideoMac",
    "~/Library/Preferences/com.okvideomac.OKVideoMac.plist",
    "~/Library/Saved Application State/com.okvideomac.OKVideoMac.savedState",
  ]
end
