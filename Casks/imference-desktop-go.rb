cask "imference-desktop-go" do
  version "0.7.0"
  sha256 "704cb286ece09e9fe353ebb580461baacf41b35d8f59a3a026c054ef42b87a5c"

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
