cask "okvideomac" do
  version "0.9.0"
  sha256 "e4aae1e3adb038ac48ff0a7228fab1c828977e1d23317fdbad85df8224dbc013"

  url "https://github.com/yaolin-dev/OKVideoMac/releases/download/v#{version}/OKVideoMac-#{version}.dmg"
  name "OKVideoMac"
  desc "Native macOS video client with libmpv playback"
  homepage "https://github.com/yaolin-dev/OKVideoMac"

  livecheck do
    url :url
    strategy :github_latest
  end

  app "OKVideoMac.app"

  zap trash: [
    "~/Library/Application Support/com.okvideomac.OKVideoMac",
    "~/Library/Caches/com.okvideomac.OKVideoMac",
    "~/Library/Preferences/com.okvideomac.OKVideoMac.plist",
    "~/Library/Saved Application State/com.okvideomac.OKVideoMac.savedState",
  ]
end
