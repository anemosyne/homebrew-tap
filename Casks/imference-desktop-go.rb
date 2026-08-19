cask "imference-desktop-go" do
  version "0.4.0"
  sha256 "444e8ad64321873670413cb5c8d260b5d26c4427179e1f6f81975bc196428008"

  url "https://github.com/Publikey/imference-desktop/releases/download/v#{version}/imference-desktop-go-macos-universal.dmg"
  name "imference-desktop-go"
  desc "Generate AI images and videos on local or cloud GPU"
  homepage "https://github.com/Publikey/imference-desktop"

  livecheck do
    url :url
    strategy :github_latest
  end

  app "imference-desktop-go.app"

  zap trash: [
    "~/Library/Application Support/com.imference.desktop",
    "~/Library/Caches/com.imference.desktop",
    "~/Library/Preferences/com.imference.desktop.plist",
    "~/Library/Saved Application State/com.imference.desktop.savedState",
  ]
end
