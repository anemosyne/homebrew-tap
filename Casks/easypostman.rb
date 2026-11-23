cask "easypostman" do
  version "6.3.4"
  sha256 "0e32382df6660a2f6f53fa92bb43ae6203ed735baff7452d8f8b0a978fc69945"

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
