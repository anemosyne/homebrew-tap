cask "minimoon" do
  version "4.4,40040"
  sha256 "9d116cc1107bf330272816f28c54028011a20f3363a830eacdd209747e2d158c"

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
