cask "fovelle" do
  version "1.3.7"
  sha256 "1e955d058fb1c315072fe0c4add39e468ee40d16dae4fc0f63f6b2f52f9d0734"

  url "https://github.com/inostarlin-passion/Fovelle/releases/download/v#{version}/Fovelle-v#{version}-macOS-universal.zip"
  name "Fovelle"
  desc "Minimal image viewer"
  homepage "https://github.com/inostarlin-passion/Fovelle"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
  depends_on macos: :sequoia

  app "Fovelle.app"

  zap trash: [
    "~/Library/Application Support/io.github.inostarlin-passion.Fovelle",
    "~/Library/Caches/io.github.inostarlin-passion.Fovelle",
    "~/Library/Preferences/io.github.inostarlin-passion.Fovelle.plist",
    "~/Library/Saved Application State/io.github.inostarlin-passion.Fovelle.savedState",
  ]
end
