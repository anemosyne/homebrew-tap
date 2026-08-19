cask "zap" do
  version "2026.07.09.1"
  sha256 "885281050b501478dd96a2e501f11283ab06a59bb8a9c469cfd32b7fb30eef39"

  url "https://github.com/zerx-lab/zap/releases/download/v#{version}/Zap-arm64.dmg"
  name "Zap"
  desc "Open local-first terminal with AI and agent support"
  homepage "https://github.com/zerx-lab/zap"

  livecheck do
    url :url
    strategy :github_latest
  end

  app "Zap.app"

  zap trash: [
    "~/Library/Application Support/dev.zap.Zap",
    "~/Library/Caches/dev.zap.Zap",
    "~/Library/Preferences/dev.zap.Zap.plist",
    "~/Library/Saved Application State/dev.zap.Zap.savedState",
  ]
end
