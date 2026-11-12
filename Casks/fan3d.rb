cask "fan3d" do
  version "1.2.0,7"
  sha256 "fccc1a3ffd771bcc252d3168dc5b798e2dc84ad3ebaad460fbcbe2dbd23c58b5"

  url "https://dermei.oss-cn-shanghai.aliyuncs.com/fan3d/updates/macos/Fan3D-#{version.csv.first}-build.#{version.csv.second}.zip"
  name "Fan3D"
  desc "AI-assisted 3D mockup images and animations"
  homepage "https://3d.fandcode.com/"

  livecheck do
    url "https://3d.fandcode.com/updates/appcast.xml"
    strategy :sparkle
  end

  auto_updates true
  depends_on macos: :sequoia

  app "Fan3D.app"

  zap trash: [
    "~/Library/Application Support/app.fan3d.desktop",
    "~/Library/Caches/app.fan3d.desktop",
    "~/Library/Preferences/app.fan3d.desktop.plist",
    "~/Library/Saved Application State/app.fan3d.desktop.savedState",
  ]
end
