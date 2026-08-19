cask "quarkclouddrive" do
  version "37213,7.1.0.772,30003,3128198"
  sha256 "4bb5fe79290baea17b6a76aa1a61396a668f327a220c1bd64d8d8f1f40066ab9"

  url "https://umcdn.quark.cn/download/#{version.csv.first}/quarkclouddrivemac/pckk@product_guanwang/QuarkCloudDriveMac_V#{version.csv.second}_mac_pf#{version.csv.third}_(zh-cn)_abiarm64_(Build#{version.csv.fourth}).dmg"
  name "夸克网盘"
  name "Quark Cloud Drive"
  desc "Cloud storage client with built-in video player and file sync"
  homepage "https://pan.quark.cn/"

  # ⚠️ 别用 releasemini 变体（brewforge/chinese 就是这么错的）：那是 9M 的在线安装器外壳，
  # bundle id com.quark.clouddrive.macinstaller、版本恒为 1.0.1，每次启动只会弹「立即安装」。
  # abiarm64 才是 733M 的 arm64 原生本体，bundle id com.quark.clouddrive.desktop。
  livecheck do
    url "https://pan.quark.cn/api/client_version"
    strategy :page_match do |page|
      data = JSON.parse(page)["data"]["origin_macDmgForArmUrl"]
      stem = "quarkclouddrivemac/pckk@product_guanwang/QuarkCloudDriveMac"
      regex(%r{/(\d{5})/#{stem}_V(\d+(?:\.\d+)+)_mac_pf(\d{5})_\(zh-cn\)_abiarm64_\(Build(\d{7})\)\.dmg}i)
      match = data.match(regex)
      next if match.blank?

      "#{match[1]},#{match[2]},#{match[3]},#{match[4]}"
    end
  end

  depends_on arch: :arm64

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
