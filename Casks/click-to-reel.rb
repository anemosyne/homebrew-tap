cask "click-to-reel" do
  version "0.1.51"
  sha256 "6aaacafc108dcbcce8320ac43c7b93271c865181e0186a310e57a80206293e2f"

  url "https://pub-fc05b938d30a4b4595ca4ca87370fec3.r2.dev/NeuralScreen/macos/ClickToReel_#{version}_aarch64.dmg"
  name "Click to Reel"
  desc "Screen recorder with automatic zoom on clicks"
  homepage "https://clicktoreel.com/"

  # 应用内 Tauri 更新清单
  livecheck do
    url "https://pub-fc05b938d30a4b4595ca4ca87370fec3.r2.dev/NeuralScreen/darwin/latest.json"
    strategy :json do |json|
      json["version"]
    end
  end

  auto_updates true
  depends_on macos: :monterey

  app "Click to Reel.app"

  zap trash: [
    "~/Library/Application Support/com.lidashuai.clicktoreel",
    "~/Library/Caches/com.lidashuai.clicktoreel",
    "~/Library/Preferences/com.lidashuai.clicktoreel.plist",
    "~/Library/Saved Application State/com.lidashuai.clicktoreel.savedState",
  ]
end
