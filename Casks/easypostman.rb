cask "easypostman" do
  version "6.3.2"
  sha256 "3b13571af874e1c3a8f3be0bcb143faf5bd2e7145ccbc7487f603a13f10bb6f7"

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
