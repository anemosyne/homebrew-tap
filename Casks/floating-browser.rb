cask "floating-browser" do
  version "0.1.16"
  sha256 "7a20b02a2424dccc14cec9106a850d3d46de00e6bf909a61bb78dffc63647557"

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
