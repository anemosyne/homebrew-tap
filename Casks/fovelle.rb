cask "fovelle" do
  version "1.4.2"
  sha256 "0044e77c25860e2d36c94476f3ca2aa3b56018387767cb192cd28f244574bf53"

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
