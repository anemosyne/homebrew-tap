cask "mash" do
  version "0.33.0"
  sha256 "e290ce60b18eb58485687da5d155acfe63cfc3d3b5b87cfcda784129b453e39a"

  url "https://github.com/ZaiZheTingDun/mash-app/releases/download/v#{version}/Mash_#{version}_aarch64.dmg"
  name "Mash"
  desc "Automation tool for Fate/Grand Order"
  homepage "https://docs.mash.xiaotongx.com/"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
  depends_on :macos

  app "Mash.app"

  zap trash: [
    "~/Library/Application Support/com.xiaotongx.mash",
    "~/Library/Caches/com.xiaotongx.mash",
    "~/Library/Preferences/com.xiaotongx.mash.plist",
    "~/Library/Saved Application State/com.xiaotongx.mash.savedState",
  ]
end
