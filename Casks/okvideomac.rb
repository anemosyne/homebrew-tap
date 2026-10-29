cask "okvideomac" do
  version "0.3.41"
  sha256 "3b469542cca39a8f82387fe8530420d977fd5d57706f9d67756249cd1873cfb0"

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
