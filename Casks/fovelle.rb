cask "fovelle" do
  version "1.4.3"
  sha256 "8e695fac15081e7d862b37a19caf4cd99ccdc131b8d675e48782d976675a8c3c"

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
