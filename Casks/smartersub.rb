cask "smartersub" do
  version "0.9.7,392fd9debb83"
  sha256 "392fd9debb833a7226c595058d321125effa8b59ce3300678cbd1815cccb955b"

  url "https://download.smartersub.kevzhi.com/releases/#{version.csv.first}/SmarterSub-#{version.csv.first}-mac-arm64-#{version.csv.second}.dmg"
  name "灵幕"
  name "SmarterSub"
  desc "Subtitle editor with error correction, translation and re-alignment"
  homepage "https://smartersub.kevzhi.com/"

  # 安装包 6G+，版本号直接从下载页的文件名读，不下载；文件名尾缀是 sha256 前 12 位
  livecheck do
    url "https://smartersub.kevzhi.com/download.html"
    regex(%r{releases/(\d+(?:\.\d+)+)/SmarterSub-\1-mac-arm64-(\h+)\.dmg}i)
    strategy :page_match do |page, regex|
      page.scan(regex).map { |match| match.join(",") }
    end
  end

  auto_updates true
  depends_on macos: :monterey

  app "灵幕.app"

  zap trash: [
    "~/Library/Application Support/com.kevzhi.smartersub",
    "~/Library/Caches/com.kevzhi.smartersub",
    "~/Library/Preferences/com.kevzhi.smartersub.plist",
    "~/Library/Saved Application State/com.kevzhi.smartersub.savedState",
  ]
end
