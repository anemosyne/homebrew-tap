cask "openasr-desktop" do
  version "0.1.24"
  sha256 "a7c27ba412f80d8a32c690541696b6cb05a6d6b4f7d4798516784d7a4ff8a155"

  url "https://github.com/QuintinShaw/openasr/releases/download/desktop-v#{version}/OpenASR-Desktop-#{version}-aarch64.dmg"
  name "OpenASR Desktop"
  desc "Local-first speech-to-text with no cloud or telemetry"
  homepage "https://github.com/QuintinShaw/openasr"

  # 同仓库还发 CLI（v*），只认 desktop-v* 标签
  livecheck do
    url :url
    regex(/^desktop[._-]v?(\d+(?:\.\d+)+)$/i)
    strategy :github_releases
  end

  depends_on :macos

  app "OpenASR Desktop.app"

  zap trash: [
    "~/Library/Application Support/dev.openasr.desktop",
    "~/Library/Caches/dev.openasr.desktop",
    "~/Library/Preferences/dev.openasr.desktop.plist",
    "~/Library/Saved Application State/dev.openasr.desktop.savedState",
  ]
end
