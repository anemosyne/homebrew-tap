cask "icontainu" do
  version "0.6.0"
  sha256 "680a26ba72b0178561fceaa6066f9290ed2f2565b15c952128b035999b81106c"

  url "https://github.com/jeffqiu1989/IcontainU/releases/download/#{version}/IcontainU-#{version}.zip"
  name "IcontainU"
  desc "GUI for Apple's container runtime"
  homepage "https://jeffqiu1989.github.io/IcontainU/"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: :tahoe

  app "IcontainU.app"

  zap trash: [
    "~/Library/Application Support/com.35ers.IcontainU",
    "~/Library/Caches/com.35ers.IcontainU",
    "~/Library/Preferences/com.35ers.IcontainU.plist",
    "~/Library/Saved Application State/com.35ers.IcontainU.savedState",
  ]
end
