cask "minimoon" do
  version "4.6,40060"
  sha256 "981b93029e56f8ffb89aa4803fe213b6ae0eeea644b7fa6a6ded4410d4b8f18a"

  url "https://minimoon-dist.plastaq.com/MiniMoon-#{version.csv.first}+#{version.csv.second}.dmg"
  name "MiniMoon"
  desc "Compact music player"
  homepage "https://www.plastaq.com/minimoon"

  livecheck do
    url "https://minimoon-dist.plastaq.com/appcast.xml"
    strategy :sparkle
  end

  auto_updates true
  depends_on macos: :tahoe

  app "MiniMoon.app"

  zap trash: [
    "~/Library/Application Support/com.plastaq.music2",
    "~/Library/Caches/com.plastaq.music2",
    "~/Library/Preferences/com.plastaq.music2.plist",
    "~/Library/Saved Application State/com.plastaq.music2.savedState",
  ]
end
