cask "lyrics-plus" do
  version "2.2.20"
  sha256 "7560f40ba9bbea18c44396828ed62b7165d75c766deb9c20648c942eb6f78c3d"

  url "https://github.com/afeibukaixin/Lyrics-Plus/releases/download/v#{version}/Lyrics.Plus_#{version}_aarch64.dmg"
  name "Lyrics Plus"
  desc "Desktop lyrics for Apple Music and Spotify"
  homepage "https://github.com/afeibukaixin/Lyrics-Plus"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on :macos

  app "Lyrics Plus.app"

  zap trash: [
    "~/Library/Application Support/com.xiaoafei.lyrics-plus",
    "~/Library/Caches/com.xiaoafei.lyrics-plus",
    "~/Library/Preferences/com.xiaoafei.lyrics-plus.plist",
    "~/Library/Saved Application State/com.xiaoafei.lyrics-plus.savedState",
  ]
end
