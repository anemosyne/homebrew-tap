cask "easypostman" do
  version "6.2.9"
  sha256 "5c69cdbdf0a28e8110e720dc79e468c4b43b283a03d0d5f08539497a33fe8f68"

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
