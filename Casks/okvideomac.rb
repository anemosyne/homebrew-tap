cask "okvideomac" do
  version "0.9.3"
  sha256 "3656ac54490df7cd6778022e3f7bd7b454b86b49fcbb4598abe5578588807181"

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
