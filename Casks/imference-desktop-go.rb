cask "imference-desktop-go" do
  version "0.6.1"
  sha256 "ced674eab195fa4f5be88ceea80f15ba40989cf9382bd693c864d3fe16e2095a"

  url "https://github.com/Publikey/imference-desktop/releases/download/v#{version}/imference-desktop-go-macos-universal.dmg"
  name "imference-desktop-go"
  desc "Generate AI images and videos on local or cloud GPU"
  homepage "https://github.com/Publikey/imference-desktop"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on :macos

  app "imference-desktop-go.app"

  zap trash: [
    "~/Library/Application Support/com.imference.desktop",
    "~/Library/Caches/com.imference.desktop",
    "~/Library/Preferences/com.imference.desktop.plist",
    "~/Library/Saved Application State/com.imference.desktop.savedState",
  ]
end
