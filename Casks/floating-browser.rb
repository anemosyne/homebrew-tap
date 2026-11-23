cask "floating-browser" do
  version "0.2.11"
  sha256 "9ee96a55c900649a107620ea3aa5f5e4cd53a6d9ef201f08b201fd40a167b1ff"

  url "https://floating-browser.xyptkd.cn/downloads/floating-browser-#{version}-macos-arm64.dmg"
  name "悬浮浏览器"
  desc "Floating window browser"
  homepage "https://floating-browser.xyptkd.cn/"

  livecheck do
    url :homepage
    regex(/floating-browser[._-]v?(\d+(?:\.\d+)+)[._-]macos[._-]arm64\.dmg/i)
  end

  depends_on :macos

  app "悬浮浏览器.app"

  zap trash: [
    "~/Library/Application Support/com.jiamuqing.floatingbrowser",
    "~/Library/Caches/com.jiamuqing.floatingbrowser",
    "~/Library/Preferences/com.jiamuqing.floatingbrowser.plist",
    "~/Library/Saved Application State/com.jiamuqing.floatingbrowser.savedState",
  ]
end
