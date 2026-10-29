cask "frtmproxy" do
  version "1.9.1"
  sha256 "b5671b8621d10427615be21e279186a7334eeacba54fc1949c31e97574877dbb"

  url "https://github.com/ValentinoPalomba/FRTMProxy/releases/download/v.#{version}/FRTMProxy-#{version}.zip"
  name "FRTMProxy"
  desc "Observe, understand, and shape HTTP/S traffic in real time"
  homepage "https://github.com/ValentinoPalomba/FRTMProxy"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: :sonoma

  app "FRTMProxy.app"

  zap trash: [
    "~/Library/Application Support/FRTMProxy",
    "~/Library/HTTPStorages/com.valentinopalomba.frtmproxy",
    "~/Library/Preferences/com.valentinopalomba.frtmproxy.plist",
  ]
end
