cask "mdview-pro" do
  version "2.0.19"
  sha256 "caf996c38bee2f34a4804c175e6c94c34b2efcbde1b68f4ebfdbcb665a50f393"

  url "https://www.mdview.cn/download/mdview-macos-pro-#{version}.dmg"
  name "mdview Pro"
  desc "Markdown viewer"
  homepage "https://www.mdview.cn/"

  # 应用内更新清单
  livecheck do
    url "https://www.mdview.cn/api/latest.json"
    strategy :json do |json|
      json["pro_version"]
    end
  end

  auto_updates true
  depends_on :macos

  app "mdview-pro.app"

  zap trash: [
    "~/Library/Application Support/cn.mdview.app.pro",
    "~/Library/Caches/cn.mdview.app.pro",
    "~/Library/Preferences/cn.mdview.app.pro.plist",
    "~/Library/Saved Application State/cn.mdview.app.pro.savedState",
  ]
end
