cask "minimoon" do
  version "4.5,40050"
  sha256 "7a2cbac80dce6d70c617d2ce6c525b3ec2685906fbb36e40c815b28b4b409cd2"

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
