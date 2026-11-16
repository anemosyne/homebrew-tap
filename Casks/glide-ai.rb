cask "glide-ai" do
  version "1.1.12"
  sha256 "ecac2e5884773c065d7a4cc457addb66e8cd79f7a4d26c0f6c1612316b3f1dce"

  url "https://glide-ai.fun/downloads/Glide_v#{version}_arm64.dmg"
  name "Glide"
  name "妙划"
  desc "Mouse and trackpad gesture tool"
  homepage "https://glide-ai.fun/"

  # 与官方 glide（窗口管理器）、glide-browser 不是同一个应用
  livecheck do
    url "https://glide-ai.fun/api/release/latest.json"
    strategy :json do |json|
      json["version"]
    end
  end

  auto_updates true
  depends_on macos: :ventura

  app "Glide.app"

  zap trash: [
    "~/Library/Application Support/com.briskygates.glide",
    "~/Library/Caches/com.briskygates.glide",
    "~/Library/Preferences/com.briskygates.glide.plist",
    "~/Library/Saved Application State/com.briskygates.glide.savedState",
  ]
end
