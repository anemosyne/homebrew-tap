cask "filepilot" do
  version "1.0.0"
  sha256 "149399c1d90898e4bd8e1f42acb1c6f874439cbaabe0e1596755852dcbb89e25"

  url "https://github.com/birdyzzz/FilePilot/releases/download/v#{version}/FilePilot-#{version}-macOS.dmg"
  name "FilePilot"
  desc "File type association manager for macOS"
  homepage "https://github.com/birdyzzz/FilePilot"

  livecheck do
    url :url
    strategy :github_latest
  end

  app "FilePilot.app"

  zap trash: [
    "~/Library/Application Support/com.filepilot.app",
    "~/Library/Caches/com.filepilot.app",
    "~/Library/Preferences/com.filepilot.app.plist",
    "~/Library/Saved Application State/com.filepilot.app.savedState",
  ]
end
