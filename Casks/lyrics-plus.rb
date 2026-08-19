cask "lyrics-plus" do
  version "2.1.1"
  sha256 "6bcb7a6a9b2b090c772ff223dd826e7433c20c6678bed99dcb7abae5003954ef"

  url "https://github.com/afeibukaixin/Lyrics-Plus/releases/download/v#{version}/Lyrics.Plus_#{version}_aarch64.dmg"
  name "Lyrics Plus"
  desc "Desktop lyrics for Apple Music and Spotify"
  homepage "https://github.com/afeibukaixin/Lyrics-Plus"

  livecheck do
    url :url
    strategy :github_latest
  end

  app "Lyrics Plus.app"

  zap trash: [
    "~/Library/Application Support/com.xiaoafei.lyrics-plus",
    "~/Library/Caches/com.xiaoafei.lyrics-plus",
    "~/Library/Preferences/com.xiaoafei.lyrics-plus.plist",
    "~/Library/Saved Application State/com.xiaoafei.lyrics-plus.savedState",
  ]
end
