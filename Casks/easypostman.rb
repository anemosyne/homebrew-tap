cask "easypostman" do
  version "6.3.6"
  sha256 "1c0829870eeec1807c5d03b4fe331a52717b6cb8b94ea383c826ea4055b11aa6"

  url "https://github.com/lakernote/easy-postman/releases/download/v#{version}/EasyPostman-#{version}-macos-arm64.dmg"
  name "EasyPostman"
  desc "Open-source API debugging and stress testing tool"
  homepage "https://github.com/lakernote/easy-postman"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on :macos

  app "EasyPostman.app"

  zap trash: [
    "~/Library/Application Support/com.laker.postman",
    "~/Library/Caches/com.laker.postman",
    "~/Library/Preferences/com.laker.postman.plist",
    "~/Library/Saved Application State/com.laker.postman.savedState",
  ]
end
