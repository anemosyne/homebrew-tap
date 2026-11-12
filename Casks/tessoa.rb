cask "tessoa" do
  version "0.31.0"
  sha256 "6f2c6ca8377c455a3d8d0b53d040c448d1454eff2f55210da380fdfcc6ad4509"

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
