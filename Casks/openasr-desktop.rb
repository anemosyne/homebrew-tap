cask "openasr-desktop" do
  version "0.1.21"
  sha256 "143ee2c00f00de759691f55334ab16026ce0349cd1eb682edd95a2e793ee05a5"

  url "https://github.com/QuintinShaw/openasr/releases/download/desktop-v#{version}/OpenASR-Desktop-#{version}-aarch64.dmg"
  name "OpenASR Desktop"
  desc "Local-first speech-to-text with no cloud or telemetry"
  homepage "https://github.com/QuintinShaw/openasr"

  livecheck do
    url :url
    strategy :github_latest
  end

  app "OpenASR Desktop.app"

  zap trash: [
    "~/Library/Application Support/dev.openasr.desktop",
    "~/Library/Caches/dev.openasr.desktop",
    "~/Library/Preferences/dev.openasr.desktop.plist",
    "~/Library/Saved Application State/dev.openasr.desktop.savedState",
  ]
end
