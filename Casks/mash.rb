cask "mash" do
  version "0.30.0"
  sha256 "279b123882dea5926c9e047a0d967d5d281c556a0940aac7bc00638d79ee029b"

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
