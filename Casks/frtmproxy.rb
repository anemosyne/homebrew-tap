cask "frtmproxy" do
  version "1.8.1"
  sha256 "a2dd4446648abcaf02a9e736e139c0347bdce3f505f7316392b8a163f78ead19"

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
