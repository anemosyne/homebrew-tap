cask "tessoa" do
  version "0.32.0"
  sha256 "2d849ec9e65ee4dba9f0f0c35023f6aaacdceb29b7a324aec7a48b711a5f9b0c"

  url "https://download.tessoa.com/tessoa/v#{version}/tessoa-macos-aarch64.dmg"
  name "tessoa"
  desc "GPU-accelerated file manager written in Rust"
  homepage "https://tessoa.com/"

  # 应用内更新检查用的同一个清单，带版本化 URL 和 sha256
  livecheck do
    url "https://download.tessoa.com/tessoa/latest.json"
    strategy :json do |json|
      json["version"]
    end
  end

  auto_updates true
  depends_on :macos

  app "tessoa.app"

  zap trash: [
    "~/Library/Application Support/com.no-needto-recall.tessoa",
    "~/Library/Caches/com.no-needto-recall.tessoa",
    "~/Library/Preferences/com.no-needto-recall.tessoa.plist",
    "~/Library/Saved Application State/com.no-needto-recall.tessoa.savedState",
  ]
end
