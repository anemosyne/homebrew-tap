cask "birth" do
  version "0.2.10"
  sha256 "34c4b1282ef2bc2b07dc7c4c2c14696a739685e9201397920fea3807d74136fa"

  url "https://github.com/iAmCorey/birth/releases/download/v#{version}/Birth-#{version}.dmg"
  name "Birth"
  desc "Open-source macOS startup items manager"
  homepage "https://github.com/iAmCorey/birth"

  livecheck do
    url :url
    strategy :github_latest
  end

  app "Birth.app"

  zap trash: [
    "~/Library/Application Support/dev.birth.Birth",
    "~/Library/Caches/dev.birth.Birth",
    "~/Library/Preferences/dev.birth.Birth.plist",
    "~/Library/Saved Application State/dev.birth.Birth.savedState",
  ]
end
