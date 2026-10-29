cask "imference-desktop-go" do
  version "0.5.0"
  sha256 "b858af85de44be7bec86e29c742e463c321dec4aa4a8e6d2e4d67bc074522b50"

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
