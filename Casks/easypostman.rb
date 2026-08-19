cask "easypostman" do
  version "6.0.19"
  sha256 "423a316edc6412fc3d0ac46d231ec577b0b65410708c905499db65cbf2eb21b5"

  url "https://github.com/lakernote/easy-postman/releases/download/v#{version}/EasyPostman-#{version}-macos-arm64.dmg"
  name "EasyPostman"
  desc "Open-source API debugging and stress testing tool"
  homepage "https://github.com/lakernote/easy-postman"

  livecheck do
    url :url
    strategy :github_latest
  end

  app "EasyPostman.app"

  zap trash: [
    "~/Library/Application Support/com.laker.postman",
    "~/Library/Caches/com.laker.postman",
    "~/Library/Preferences/com.laker.postman.plist",
    "~/Library/Saved Application State/com.laker.postman.savedState",
  ]
end
