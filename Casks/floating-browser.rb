cask "floating-browser" do
  version "0.2.4"
  sha256 "190c05eda4bf352b080fd142b4a490caa868e2c84ed958ad6797ea6abc2c94b6"

  url "https://floating-browser.xyptkd.cn/downloads/floating-browser-#{version}-macos-arm64.dmg"
  name "悬浮浏览器"
  desc "Floating window browser"
  homepage "https://floating-browser.xyptkd.cn"

  livecheck do
    url :homepage
    regex(/floating-browser[._-]v?(\d+(?:\.\d+)+)[._-]macos[._-]arm64\.dmg/i)
  end

  app "悬浮浏览器.app"

  zap trash: [
    "~/Library/Application Support/com.jiamuqing.floatingbrowser",
    "~/Library/Caches/com.jiamuqing.floatingbrowser",
    "~/Library/Preferences/com.jiamuqing.floatingbrowser.plist",
    "~/Library/Saved Application State/com.jiamuqing.floatingbrowser.savedState",
  ]
end
