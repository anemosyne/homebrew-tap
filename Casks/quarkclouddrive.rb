cask "quarkclouddrive" do
  version "37213,7.4.2.820,30003,3240426"
  sha256 "4018f9f2b4cb3d76813f9a43a3717d738c99670b78af072ca50fbb845e649f3e"

  url "https://umcdn.quark.cn/download/#{version.csv.first}/quarkclouddrivemac/pckk@product_guanwang/QuarkCloudDriveMac_V#{version.csv.second}_mac_pf#{version.csv.third}_(zh-cn)_abiarm64_(Build#{version.csv.fourth}).dmg"
  name "夸克网盘"
  name "Quark Cloud Drive"
  desc "Cloud storage client with built-in video player and file sync"
  homepage "https://pan.quark.cn/"

  # ⚠️ 别用 releasemini 变体（brewforge/chinese 就是这么错的）：那是 9M 的在线安装器外壳，
  # bundle id com.quark.clouddrive.macinstaller、版本恒为 1.0.1，每次启动只会弹「立即安装」。
  # abiarm64 才是 arm64 原生本体，bundle id com.quark.clouddrive.desktop。
  # 该接口按后端灰度返回，只有部分请求带 abiarm64 链接，所以扫全文；扫不到当次就报错，下次再试。
  livecheck do
    url "https://pan.quark.cn/api/client_version"
    regex(%r{
      /(\d+)/quarkclouddrivemac/pckk@product_guanwang/
      QuarkCloudDriveMac_V(\d+(?:\.\d+)+)_mac_pf(\d+)_\(zh-cn\)_abiarm64_\(Build(\d+)\)\.dmg
    }ix)
    strategy :page_match do |page, regex|
      page.scan(regex).map { |match| match.join(",") }
    end
  end

  depends_on arch: :arm64
  depends_on :macos

  app "QuarkCloudDrive.app"

  zap trash: [
    "~/Library/Application Support/quark-cloud-drive",
    "~/Library/Caches/com.quark.clouddrive.desktop",
    "~/Library/Caches/com.quark.clouddrive.macinstaller",
    "~/Library/HTTPStorages/com.quark.clouddrive.desktop",
    "~/Library/HTTPStorages/com.quark.clouddrive.macinstaller",
    "~/Library/Preferences/com.alibaba.quark.clouddrive.helper.Renderer.plist",
    "~/Library/Preferences/com.alibaba.quark.clouddrive.plist",
    "~/Library/Preferences/com.quark.clouddrive.desktop.plist",
    "~/Library/Preferences/com.quark.clouddrive.macinstaller.plist",
    "~/Library/Saved Application State/com.quark.clouddrive.desktop.savedState",
  ]
end
